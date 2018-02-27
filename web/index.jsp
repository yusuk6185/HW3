<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Salary Calculator</title>
        <link rel="stylesheet" type="text/css" href="style.css"/>
    </head>
    <body>
        <h1>Simple Salary Calculator</h1>
        <form name = "SimpleSalaryCalculator" action = "results.jsp" method = "post">
            <table style="overflow-x:">
                <tbody>
                    <tr>
                        <td>Hours Worked:</td>
                        <td><input type ="text" name ="hoursWorked" value ="" size ="50"></td>
                    </tr>

                    <tr>
                        <td>Hourly Pay:</td>
                        <td><input type ="text" name ="hourlyWage" value ="" size ="50"></td>
                    </tr>

                    <tr>
                        <td>Pre-tax Deduct:</td>
                        <td><input type ="text" name ="preTaxDeduction" value ="" size ="50"></td>
                    </tr>

                    <tr>
                        <td>Post-tax Deduct:</td>
                        <td><input type ="text" name ="postTaxDeduction" value ="" size ="50"></td>
                    </tr>
                </tbody>
            </table>

            <input type="reset" value="Clear" id="clear">
            <input type="submit" value="Submit" id="submit">

        </form>
    </body>
</html>