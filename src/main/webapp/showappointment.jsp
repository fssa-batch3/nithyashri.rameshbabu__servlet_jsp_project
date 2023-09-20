<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../assets/css/verifieddoctor.css">
</head>

<body>

    <h2>Verified doctors</h2>
    <table class="tabss">
        <!-- <table class="tab">
            <thead class="head">
                <tr>
                    <th>Doctor image</th>
                    <th>Name</th>
                    <th>Specialization</th>
                    <th>Hospital name</th>
                    <th>Approved</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><img class="mgooddoc"
                            src="https://imagesx.practo.com/providers/dr-vidyamani-boriah-obstetrician-bangalore-f2d8ce30-bff6-4618-b993-05835697ffd3.jpg?i_type=t_100x100-2x">
                    </td>
                    <td>Dr. John Smith</td>
                    <td>Cardiology</td>
                    <td>Vijaya hospital</td>
                    <td>Verified</td>
                </tr> -->

        </tbody>
    </table>
    </table>

    <script>

        let tables = document.createElement("table")
        tables.setAttribute("class", "tab")
        tables.innerHTML = ` <thead class="head">
                <tr>
                    <th>Doctor image</th>
                    <th>Name</th>
                    <th>Specialization</th>
                    <th>Hospital name</th>
                    <th>Approved</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><img class="mgooddoc"
                            src="">
                    </td>
                    <td>Dr. John Smith</td>
                    <td>Cardiology</td>
                    <td>Vijaya hospital</td>
                    <td>Verified</td>
                </tr>

            </tbody>`

        document.querySelector(".tabss").append(tables)
    </script>

</body>


</html>