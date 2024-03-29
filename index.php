<!DOCTYPE HTML>

<html>

<head>
    <meta charset="UTF-8">
    <title>Internet News - Emotion Survey</title>
    <link rel="stylesheet" type="text/css" href="styles/style_all.css">
    <link rel="stylesheet" type="text/css" href="styles/style_index.css">
</head>

<body>
    <div class="main-wrapper">
        <h1>Please enter your native language and email (optional) in order to continue to the next page.</h1>
        <div class="description">
            <p>You will be asked to review <b>three</b> articles in English and then group together the ones that invoke
                similiar emotions in you. These articles are published online by well known journals.</p>
            <p>For the purposes of language-emotion analysis, you will be asked to specify your native language (in
                English). The data collected from this survey will be statistically analysed to draw research
                conclusions in the domain of language communication and emotion. <b>The survey is anonymous.</b></p>
        </div>
        <form action="login_validation.php" method="post"> 
            <div class="upper-row-wrapper">
                <div class="input-field-wrapper">
                    <label for="nlanguage">Native Language:</label>
                    <input type="text" name="nlanguage" id="nlanguage">
                </div>
                <div class="input-field-wrapper">
                    <label for="email">Email:</label>
                    <input type="email" name="email" id="email">
                </div>
            </div>
            <div class="lower-row-wrapper">
                <button id=submit-btn class="button" name="submit-btn" type="submit">Submit</button>
                <button id=reset-btn class="button" name="reset-btn" type="reset">Reset</button>
            </div>
        </form>
    </div>
</body>

</html>