<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>Slider</title>
</head>

<body onload="initializeBoard('Lobo');">
    <script type="text/javascript">
        var blankTile = 0;
        function initializeBoard(gameDir) {
            var dirPath = "images/" + gameDir + "/";
            var buttonClicked = false;
            var i = 0;
            for (i = 0; i < document.gameBoard.length - 1; i++) {
                var faceValue = i + 1;
                document.gameBoard[i].faceValue = faceValue;
                document.gameBoard[i].src = dirPath + faceValue + ".jpg";
            }
            document.gameBoard[document.gameBoard.length - 1].faceValue = 0;
            document.gameBoard[document.gameBoard.length - 1].src = dirPath + "0.jpg";
            blankTile = 15;

             for (i = 0; i < document.solutionBoard.length - 1; i++) {
                var faceValue = i + 1;
                document.solutionBoard[i].src = dirPath + faceValue + ".jpg";
            }
            document.solutionBoard[document.gameBoard.length - 1].src = dirPath + "0.jpg";
            blankTile = 15;


        }
    </script>
    <table style="width: 1000px;" cellpadding="0" cellspacing="0" border="0">
        <tr>
            <td width="1000" colspan="3" align="center" valign="middle" class="header">Dynamic Board</td>
        </tr>
        <tr>
            <td colspan="1" style="width: 400px;">
                <table style="width: 400px;" cellpadding="0" cellspacing="0">
                    <tr>
                        <td align="center" colspan="4">GameBoard</td>
                    </tr>
                    <tr>
                        <td style="border: 1px solid #000000; width: 100px; height: 100px;">
                           <img src="" name="gameBoard"  style="display:block;"/></td>
                        <td style="border: 1px solid #000000; width: 100px; height: 100px;">
                           <img src="" name="gameBoard"  style="display:block;"/></td>
                        <td style="border: 1px solid #000000; width: 100px; height: 100px;">
                           <img src="" name="gameBoard"  style="display:block;"/></td>
                        <td style="border: 1px solid #000000; width: 100px; height: 100px;">
                           <img src="" name="gameBoard"  style="display:block;"/></td>
                    </tr>
                    <tr>
                        <td style="border: 1px solid #000000; width: 100px; height: 100px;">
                           <img src="" name="gameBoard"  style="display:block;"/></td>
                        <td style="border: 1px solid #000000; width: 100px; height: 100px;">
                           <img src="" name="gameBoard"  style="display:block;"/></td>
                        <td style="border: 1px solid #000000; width: 100px; height: 100px;">
                           <img src="" name="gameBoard"  style="display:block;"/></td>
                        <td style="border: 1px solid #000000; width: 100px; height: 100px;">
                           <img src="" name="gameBoard"  style="display:block;"/></td>
                    </tr>
                    <tr>
                        <td style="border: 1px solid #000000; width: 100px; height: 100px;">
                           <img src="" name="gameBoard"  style="display:block;"/></td>
                        <td style="border: 1px solid #000000; width: 100px; height: 100px;">
                           <img src="" name="gameBoard"  style="display:block;"/></td>
                        <td style="border: 1px solid #000000; width: 100px; height: 100px;">
                           <img src="" name="gameBoard"  style="display:block;"/></td>
                        <td style="border: 1px solid #000000; width: 100px; height: 100px;">
                           <img src="" name="gameBoard"  style="display:block;"/></td>
                    </tr>
                    <tr>
                        <td style="border: 1px solid #000000; width: 100px; height: 100px;">
                           <img src="" name="gameBoard"  style="display:block;"/></td>
                        <td style="border: 1px solid #000000; width: 100px; height: 100px;">
                           <img src="" name="gameBoard"  style="display:block;"/></td>
                        <td style="border: 1px solid #000000; width: 100px; height: 100px;">
                           <img src="" name="gameBoard"  style="display:block;"/></td>
                        <td style="border: 1px solid #000000; width: 100px; height: 100px;">
                           <img src="" name="gameBoard"  style="display:block;"/></td>
                    </tr>
                </table>
            </td>
            <td style="width: 200px">
                <table style="align-items: center;">
                    <tr>
                        <td align="center" style="width: 200px">
                            <button>Start Game</button>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" style="width: 200px">Score: 0
                        </td>
                    </tr>
                </table>
            </td>
            <td colspan="1" style="width: 400px;">
                <table style="width: 400px;" cellpadding="0" cellspacing="0">
                    <tr>
                        <td align="center" colspan="4">Solution</td>
                    </tr>
                    <tr>
                        <td style="border: 1px solid #000000; width: 100px; height: 100px;">
                            <img src="" name="solutionBoard" style="display:block;" /></td>
                        <td style="border: 1px solid #000000; width: 100px; height: 100px;">
                            <img src="" name="solutionBoard" style="display:block;" /></td>
                        <td style="border: 1px solid #000000; width: 100px; height: 100px;">
                            <img src="" name="solutionBoard" style="display:block;" /></td>
                        <td style="border: 1px solid #000000; width: 100px; height: 100px;">
                            <img src="" name="solutionBoard"  style="display:block;" /></td>
                    </tr>
                    <tr>
                        <td style="border: 1px solid #000000; width: 100px; height: 100px;">
                            <img src="" name="solutionBoard"  style="display:block;" /></td>
                        <td style="border: 1px solid #000000; width: 100px; height: 100px;">
                            <img src="" name="solutionBoard"  style="display:block;"/></td>
                        <td style="border: 1px solid #000000; width: 100px; height: 100px;">
                            <img src="" name="solutionBoard"  style="display:block;"/></td>
                        <td style="border: 1px solid #000000; width: 100px; height: 100px;">
                            <img src="" name="solutionBoard"  style="display:block;"/></td>
                    </tr>
                    <tr>
                        <td style="border: 1px solid #000000; width: 100px; height: 100px;">
                            <img src="" name="solutionBoard"  style="display:block;"/></td>
                        <td style="border: 1px solid #000000; width: 100px; height: 100px;">
                            <img src="" name="solutionBoard"  style="display:block;"/></td>
                        <td style="border: 1px solid #000000; width: 100px; height: 100px;">
                            <img src="" name="solutionBoard"  style="display:block;"/></td>
                        <td style="border: 1px solid #000000; width: 100px; height: 100px;">
                            <img src="" name="solutionBoard"  style="display:block;"/></td>
                    </tr>
                    <tr>
                        <td style="border: 1px solid #000000; width: 100px; height: 100px;">
                            <img src="" name="solutionBoard"  style="display:block;"/></td>
                        <td style="border: 1px solid #000000; width: 100px; height: 100px;">
                            <img src="" name="solutionBoard"  style="display:block;"/></td>
                        <td style="border: 1px solid #000000; width: 100px; height: 100px;">
                            <img src="" name="solutionBoard"  style="display:block;"/></td>
                        <td style="border: 1px solid #000000; width: 100px; height: 100px;">
                            <img src="" name="solutionBoard"  style="display:block;"/></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</body>
</html>
