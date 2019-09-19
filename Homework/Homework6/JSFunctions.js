///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                                                                       //
// The functions below are related the Part 1: High or Low game using random numbers                                                                                     //
//                                                                                                                                                                       //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

var intScore = 0; //Set a global variable for score that will be incremented for each successful guess.
var intCurrentCard = 0

function startGame() {  //Begin Function body
    var intNumber = Math.floor((Math.random() * 13) + 1);
    var intSuit = Math.floor((Math.random() * 4) + 1);
    var strCard = "";

    if (intSuit == 1) {
        strCard = intNumber + "H.png";
    } else if (intSuit == 2) {
        strCard = intNumber + "D.png";
    } else if (intSuit == 3) {
        strCard = intNumber + "S.png";
    } else if (intSuit == 4) {
        strCard = intNumber + "C.png";
    }

    intCurrentCard = intNumber;
    document.getElementById("displayMessage").innerHTML = "";
    document.getElementById("myScore").innerHTML = "Score: 0";
    document.getElementById("displayCard").innerHTML = "<img src=\"cards/" + strCard + "\">";
}

function myGuess(strHighLow) {  //Begin Function body
    var intNumber = Math.floor((Math.random() * 13) + 1);
    var intSuit = Math.floor((Math.random() * 4) + 1);
    var intDisplayScore = 0;
    var strCard = "";
    var strMessage = "";

    if (intSuit == 1) {
        strCard = intNumber + "H.png";
    } else if (intSuit == 2) {
        strCard = intNumber + "D.png";
    } else if (intSuit == 3) {
        strCard = intNumber + "S.png";
    } else if (intSuit == 4) {
        strCard = intNumber + "C.png";
    }

    if (intNumber > intCurrentCard && strHighLow == "H") {
        intCurrentCard = intNumber;
        intScore += 1;
        intDisplayScore = intScore;
        strMessage = "The card is higher, you win!"
    } else if (intNumber < intCurrentCard && strHighLow == "L") {
        intCurrentCard = intNumber;
        intScore += 1;
        intDisplayScore = intScore;
        strMessage = "The card is lower, you win!"
    } else if (intNumber == intCurrentCard) {
        intDisplayScore = intScore;
        strMessage = "The cards match, Try Again"
    } else {
        intCurrentCard = intNumber;
        intDisplayScore = intScore;
        intScore = 0;
        strMessage = "You Lose!"
    }

    document.getElementById("displayCard").innerHTML = "<img src=\"cards/" + strCard + "\">";
    document.getElementById("displayMessage").innerHTML = strMessage;
    document.getElementById("myScore").innerHTML = "Score: " + intDisplayScore;
}


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                                                                       //
// The functions below are related the Part 2: The Mortgage Calculator                                                                                                   //
//                                                                                                                                                                       //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

function validateLoanCalcData() {  //Begin Function body
    if (!document.loanCalc.loanAmount.value.match(/^[0-9]+$/)) {
        alert('Loan amount not valid');
        document.loanCalc.loanAmount.focus();
        return;
    }

    if (document.loanCalc.loanAmount.value <= 0) {
        alert('You must have a loan amount greater than zero.');
        document.loanCalc.loanAmount.focus();
        return;
    }

    if (!document.loanCalc.payments.value.match(/^[0-9]+$/)) {
        alert('Number of payments not valid');
        document.loanCalc.payments.focus();
        return;
    }

    if (document.loanCalc.payments.value <= 0) {
        alert('You must have a number of payments greater than zero.');
        document.loanCalc.payments.focus();
        return;
    }

    if (!document.loanCalc.interestRate.value.match(/^[0-9\.]+$/)) {
        alert('Interest rate not valid');
        document.loanCalc.interestRate.focus();
        return;
    }

    if ((document.loanCalc.interestRate.value > 1) || (document.loanCalc.interestRate.value <= 0)) {
        alert('Invalid interest rate.');
        document.loanCalc.interestRate.focus();
        return;
    }

    writePayments();
}

function clearResults() {
    document.getElementById("displayPayments").innerHTML = "";
}

function writePayments() {  //Begin Function body
    var loanAmt = document.loanCalc.loanAmount.value;
    var loanPmts = document.loanCalc.payments.value;
    var intRate = document.loanCalc.interestRate.value;

    var monthlyRate = intRate / 12; //Calculate the monthly interest rate.
    var monthlyPayment = (loanAmt * monthlyRate) / (1 - Math.pow(monthlyRate * 1 + 1, 0 - loanPmts)); //Calculate the monthly interest rate.
    var totalPaid = monthlyPayment * loanPmts;
    var totalInterest = totalPaid - loanAmt;

    //Use the writeln to write all the data to the page within a table.

    strOutputData = '<table cellpadding="0" cellspacing="0" border="0" align="center">';
    strOutputData += '<tr>';
    strOutputData += '<td class="normal" align="right" width="250">Loan Amount:&nbsp;&nbsp;</td>';
    strOutputData += '<td class="normal" align="left" width="250">$' + addCommas((loanAmt * 1).toFixed(2)) + '</td>';
    strOutputData += '</tr>';
    strOutputData += '<tr><td height="5" colspan="2"></td></tr>';
    strOutputData += '<tr>';
    strOutputData += '<td class="normal" align="right" width="250">Number of Payments:&nbsp;&nbsp;</td>';
    strOutputData += '<td class="normal" align="left" width="250">' + loanPmts + '</td>';
    strOutputData += '</tr>';
    strOutputData += '<tr><td height="5" colspan="2"></td></tr>';
    strOutputData += '<tr>';
    strOutputData += '<td class="normal" align="right" width="250">Annual Rate:&nbsp;&nbsp;</td>';
    strOutputData += '<td class="normal" align="left" width="250">' + (intRate * 100).toFixed(3) + '%</td>';
    strOutputData += '</tr>';
    strOutputData += '<tr><td height="5" colspan="2"></td></tr>';
    strOutputData += '<tr>';
    strOutputData += '<td class="normal" align="right" width="250">Monthly Rate:&nbsp;&nbsp;</td>';
    strOutputData += '<td class="normal" align="left" width="250">' + (monthlyRate * 100).toFixed(3) + '%</td>';
    strOutputData += '</tr>';
    strOutputData += '<tr><td height="15" colspan="2"></td></tr>';
    strOutputData += '<tr>';
    strOutputData += '<td class="normal" align="right" width="250">Monthly Payment:&nbsp;&nbsp;</td>';
    strOutputData += '<td class="normal" align="left" width="250">$' + addCommas(monthlyPayment.toFixed(2)) + '</td>';
    strOutputData += '</tr>';
    strOutputData += '<tr><td height="5" colspan="2"></td></tr>';
    strOutputData += '<tr>';
    strOutputData += '<td class="normal" align="right" width="250">Total Paid:&nbsp;&nbsp;</td>';
    strOutputData += '<td class="normal" align="left" width="250">$' + addCommas(totalPaid.toFixed(2)) + '</td>';
    strOutputData += '</tr>';
    strOutputData += '<tr><td height="5" colspan="2"></td></tr>';
    strOutputData += '<tr>';
    strOutputData += '<td class="normal" align="right" width="250">Total Interest:&nbsp;&nbsp;</td>';
    strOutputData += '<td class="normal" align="left" width="250">$' + addCommas(totalInterest.toFixed(2)) + '</td>';
    strOutputData += '</tr>';
    strOutputData += '<tr><td height="20" colspan="2"></td></tr>';
    strOutputData += '</table>';

    // write table
    strOutputData += '<table cellpadding="0" cellspacing="0" border="1" width="500" align="center">';
    strOutputData += '<tr>';
    strOutputData += '<td width="60" align="center" valign="middle" bgcolor="#bcbcbc" class="normalBold">Pmt #</td>';
    strOutputData += '<td width="110" align="center" valign="middle" bgcolor="#bcbcbc" class="normalBold">Payment</td>';
    strOutputData += '<td width="110" align="center" valign="middle" bgcolor="#bcbcbc" class="normalBold">Interest</td>';
    strOutputData += '<td width="110" align="center" valign="middle" bgcolor="#bcbcbc" class="normalBold">Principal<br>Reduction</td>';
    strOutputData += '<td width="110" align="center" valign="middle" bgcolor="#bcbcbc" class="normalBold">Principal<br>Balance</td>';
    strOutputData += '</tr>';
    strOutputData += '<tr>';
    strOutputData += '<td class="normal" align="center">0</td>';
    strOutputData += '<td class="normal" align="center">&nbsp;</td>';
    strOutputData += '<td class="normal" align="center">&nbsp;</td>';
    strOutputData += '<td class="normal" align="center">&nbsp;</td>';
    strOutputData += '<td class="normal" align="center">' + addCommas((loanAmt * 1).toFixed(2)) + '</td>';
    strOutputData += '</tr>';

    var currentBalance = loanAmt;
    var currentInterest = 0;
    var currentPrinciple = 0;
    var shadedRow = 1;

    for (i = 1; i <= loanPmts; i++) {
        currentInterest = monthlyRate * currentBalance;
        currentPrinciple = monthlyPayment - currentInterest;
        currentBalance = currentBalance - currentPrinciple;

        if (shadedRow == 0) {
            strOutputData += '<tr>';
            shadedRow = 1;
        } else {
            strOutputData += '<tr bgcolor="#bddf81">';
            shadedRow = 0;
        }

        strOutputData += '<td class="normal" align="center">' + i + '</td>';
        strOutputData += '<td class="normal" align="center">' + addCommas(monthlyPayment.toFixed(2)) + '</td>';
        strOutputData += '<td class="normal" align="center">' + addCommas(currentInterest.toFixed(2)) + '</td>';
        strOutputData += '<td class="normal" align="center">' + addCommas(currentPrinciple.toFixed(2)) + '</td>';
        if (currentBalance < 0) {
            strOutputData += '<td class="normal" align="center">.00</td>';
        } else {
            strOutputData += '<td class="normal" align="center">' + addCommas(currentBalance.toFixed(2)) + '</td>';
        }

        strOutputData += '</tr>';
    }
    strOutputData += '</table>';
    strOutputData += '<br>';

    document.getElementById("displayPayments").innerHTML = strOutputData;

} //End of Function

function addCommas(nStr) {
    nStr += '';

    //Split the number into two part, the part before the decimal and the part after the decimal
    x = nStr.split('.');

    //Set x1 equal to the part of the number before the decimal
    x1 = x[0];

    //Set x2 equal to the part of the number after the decimal concatenated with a decimal point
    x2 = x.length > 1 ? '.' + x[1] : '';

    //set the regular expression to look for a number and only 3 digits at a time
    var rgx = /(\d+)(\d{3})/;

    //Loop through each 3 digits adding a comma
    while (rgx.test(x1)) {
        x1 = x1.replace(rgx, '$1' + ',' + '$2');
    }

    //concatenate the first part of the number with the newly inserted commas to the last part 
    //of the number containing any digits that follow the decimal place and return the value
    return x1 + x2;
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                                                                       //
// The functions below are related the Part 3: Calculator                                                                                                                //
//                                                                                                                                                                       //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//The variables below are the default values for the calculator. These do not appear within a function, so they will be set when the page loads.
//Once the script loads, these variables will be set and these three lines of code will not be executed again unless the page is reloaded.
intCurrentValue = 0
strSaveNumber = ""
strOperator = ""

//This is the function that is called when the user clicks on a number button (0-9) or the decimal button.
function calcNumber(strNumber) {
    if ((strSaveNumber == "" && strNumber == ".")) {
        strSaveNumber = "0."
    } else if ((!(strSaveNumber == "" && strNumber == "0")) && (!(strSaveNumber.match(/\./) && strNumber == "."))) {
        strSaveNumber += strNumber;
    }

    document.getElementById("calcDisplay").innerHTML = strSaveNumber;
}

//This is the function that is called when the user clicks on one of the mathematical operations (+, -, *, /)
function mathOperator(strSign) {
    intNewValue = Number(strSaveNumber)
    strSaveNumber = ""

    if (intCurrentValue == 0) {
        intCurrentValue = intNewValue;
        strOperator = strSign;
    } else if (strOperator == "") {
        strOperator = strSign;
    } else {
        if (strOperator == "+") {
            intCurrentValue = intCurrentValue + intNewValue;
        } else if (strOperator == "-") {
            intCurrentValue = intCurrentValue - intNewValue;
        } else if (strOperator == "/") {
            if (intNewValue == 0) {
                alert("Cannot Divide by zero!");
                document.getElementById("calcDisplay").innerHTML = "0";
                intCurrentValue = 0
                strSaveNumber = ""
                strOperator = ""
            } else {
                intCurrentValue = intCurrentValue / intNewValue;
            }
        } else if (strOperator == "*") {
            intCurrentValue = intCurrentValue * intNewValue;
        }

        intCurrentValue = Math.round(intCurrentValue * 10000) / 10000;
        document.getElementById("calcDisplay").innerHTML = intCurrentValue;

        if (strSign == "=") {
            strOperator = "";
        } else {
            strOperator = strSign;
        }
    }
}

//This is the function that is called when the user clicks on the clear button. It restores the variables to their default values and clears the calculator display.
function clearCalc() {
    intCurrentValue = 0
    strSaveNumber = ""
    strOperator = ""

    document.getElementById("calcDisplay").innerHTML = "0";
}


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                                                                       //
// The function below is related the Part 4: Catch me if you can                                                                                                         //
//                                                                                                                                                                       //
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

function moveSmiley() {
    var intTop = Math.floor((Math.random() * 350) + 1);
    var intLeft = Math.floor((Math.random() * 350) + 1);

    document.getElementById("catchSmiley").style.top = intTop + 'px';
    document.getElementById("catchSmiley").style.left = intLeft + 'px';
}

function caughtSmiley() {
    alert("You caught him!!!");
}