<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Info</title>
        <link rel="stylesheet" type="text/css" href="style.css"/>
    </head>

    <%
        String hoursWorked = request.getParameter("hoursWorked");
        String hourlyWage = request.getParameter("hourlyWage");
        String preTaxDeduction = request.getParameter("preTaxDeduction");
        String postTaxDeduction = request.getParameter("postTaxDeduction");

        int hoursWorked_int = Integer.parseInt(hoursWorked);
        int hourlyWage_int = Integer.parseInt(hourlyWage);
        int preTaxDeduction_int = Integer.parseInt(preTaxDeduction);
        int postTaxDeduction_int = Integer.parseInt(postTaxDeduction);

        int overtime_int;
        double overtimeHourlyRate_double;
        double grossPay_double;
        if (hoursWorked_int <= 40) {
            overtime_int = 0;
            overtimeHourlyRate_double = 0;
            grossPay_double = hourlyWage_int * hoursWorked_int;
        } else {
            overtime_int = hoursWorked_int - 40;
            overtimeHourlyRate_double = hourlyWage_int * 1.5;
            grossPay_double = hourlyWage_int * (40 + (hoursWorked_int - 40) * 1.5);
        }
        String overtime = Integer.toString(overtime_int);
        String overtimeHourlyRate = Double.toString(overtimeHourlyRate_double);
        String grossPay = Double.toString(grossPay_double);

        double taxRate_double;
        if (grossPay_double < 500) {
            taxRate_double = 0.18;
        } else {
            taxRate_double = 0.22;
        }
        String taxRate = Double.toString(taxRate_double);

        Double preTaxPay_double = grossPay_double - preTaxDeduction_int;
        Double taxAmount_double = grossPay_double * taxRate_double;
        Double postTaxPay_double = preTaxPay_double - taxAmount_double;
        Double netPay_double = postTaxPay_double - postTaxDeduction_int;

        String preTaxPay = Double.toString(preTaxPay_double);
        String taxAmount = Double.toString(taxAmount_double);
        String postTaxPay = Double.toString(postTaxPay_double);
        String netPay = Double.toString(netPay_double);
    %>

    <body>
        <h1>Salary Info</h1>
        <table>
            <tbody>
                <hr>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= hoursWorked%></td>
                </tr>

                <tr>
                    <td>Hourly Rate:</td>
                    <td><%= hourlyWage%></td>
                </tr>

                <tr>
                    <td># Hours Overtime:</td>
                    <td><%= overtime%></td>
                </tr>

                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td><%= overtimeHourlyRate%></td>
                </tr>

                <tr>
                    <td>Gross Pay:</td>
                    <td><%= grossPay%></td>
                </tr>

                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= preTaxDeduction%></td>
                </tr>

                <tr>
                    <td>Pre-tax Pay:</td>
                    <td><%= preTaxPay%></td>
                </tr>

                <tr>
                    <td>Tax Amount:</td>
                    <td><%= taxAmount%></td>
                </tr>

                <tr>
                    <td>Post-tax Pay:</td>
                    <td><%= postTaxPay%></td>
                </tr>

                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= postTaxDeduction%></td>
                </tr>

                <tr>
                    <td>Net Pay:</td>
                    <td><%= netPay%></td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
