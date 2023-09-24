<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../assets/css/periodscalendar.css">
</head>

<body>
  
    <div class="period-calculator">
        <h2>Menstrual Cycle Period Calculator</h2>
        <form id="calculator-form" action="CalculatePeriodServlet" method="post">
            <label for="last-period">Last Period Date:</label>
            <input type="date" id="last-period" name="last-period">
            <label for="cycle-length">Cycle Length (in days):</label>
            <input type="number" id="cycle-length" name="cycle-length" min="21" max="35">
            <button type="submit">Calculate</button>
        </form>
        <div id="result">
            <p>Next Period Date: <span id="nextPeriodDate"></span></p>
            <p>Fertile Window: <span id="fertileWindowStart"></span> - <span id="fertileWindowEnd"></span></p>
            <p>Ovulation Date: <span id="ovulationDate"></span></p>
        </div>
    </div>
</body>

</html>