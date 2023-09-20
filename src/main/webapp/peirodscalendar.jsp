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
        <form id="calculator-form">
            <label for="last-period">Last Period Date:</label>
            <input type="date" id="last-period" name="last-period">
            <label for="cycle-length">Cycle Length (in days):</label>
            <input type="number" id="cycle-length" name="cycle-length" min="21" max="35">
            <button type="submit">Calculate</button>
        </form>
        <div id="result"></div>
    </div>

    <script>
        const form = document.getElementById('calculator-form');
        const result = document.getElementById('result');

        form.addEventListener('submit', (event) => {
            event.preventDefault();
            const lastPeriodDate = new Date(document.getElementById('last-period').value);
            const cycleLength = parseInt(document.getElementById('cycle-length').value);

            // Calculate the next period date based on the cycle length
            const nextPeriodDate = new Date(lastPeriodDate);
            nextPeriodDate.setDate(lastPeriodDate.getDate() + cycleLength);

            // Calculate the fertile window
            const fertileStartDate = new Date(nextPeriodDate);
            fertileStartDate.setDate(nextPeriodDate.getDate() - 14);
            const fertileEndDate = new Date(fertileStartDate);
            fertileEndDate.setDate(fertileStartDate.getDate() + 6);

            // Calculate the ovulation date
            const ovulationDate = new Date(fertileStartDate);
            ovulationDate.setDate(fertileStartDate.getDate() + 3);

            // Create the result HTML
            const html = `<p>Next Period Date: ${nextPeriodDate.toLocaleDateString()}</p>
                <p>Fertile Window: ${fertileStartDate.toLocaleDateString()} - ${fertileEndDate.toLocaleDateString()}</p>
                <p>Ovulation Date: ${ovulationDate.toLocaleDateString()}</p>`;

            // Update the result HTML
            result.innerHTML = html;
        });
    </script>
</body>

</html>