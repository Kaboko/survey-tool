<!DOCTYPE HTML>

<html>

<head>
    <meta charset="UTF-8">
    <title>Internet News - Emotion Survey</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>
    <div class="main-wrapper">
        <h1>Please click on each of the articles in order to open the link.</h1>
        <div class="description">
            <p>You need to group each of these articles in either <b>A</b> or <b>B</b> group.</p>
            <p> <b>Note:</b> The data collected from this survey will be statistically analysed to draw research
                conclusions in the domain of language communication and emotion. <b>The survey is anonymous.</b></p>
        </div>
        <form action="form.php" method="post">
            <!--action to be included-->
            
<div class="container">
  <p><b><a href="https://www.bbc.com/news/av/technology-59666671">Article 1</a></b></p>
  
  <form>
    <label class="radio-inline">
      <input type="radio" name="optradio" checked>Group A
    </label>
    <label class="radio-inline">
      <input type="radio" name="optradio">Group B
    </label>
   
  </form>
</div>
            
<div class="container">
  <p><b><a href="https://www.bbc.com/news/av/technology-59666671">Article 2</a></b></p>
  
  <form>
    <label class="radio-inline">
      <input type="radio" name="optradio" checked>Group A
    </label>
    <label class="radio-inline">
      <input type="radio" name="optradio">Group B
    </label>
   
  </form>
</div>

<div class="container">
  <p><b><a href="https://www.bbc.com/news/av/technology-59666671">Article 3</a></b></p>
  
  <form>
    <label class="radio-inline">
      <input type="radio" name="optradio" checked>Group A
    </label>
    <label class="radio-inline">
      <input type="radio" name="optradio">Group B
    </label>
   
  </form>
</div>

            <div class="lower-row-wrapper">
                <button id=submit-btn class="button" value="submit-btn">Submit</button>
                <button id=reset-btn class="button" value="reset-btn" type="reset">Reset</button>
            </div>
        </form>
    </div>
</body>

</html>