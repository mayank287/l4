<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:h="http://www.example.org/hospital">

    <xsl:output method="html" indent="yes"/>

    <!-- Template to match the root element -->
    <xsl:template match="/h:hospital">
        <html>
            <head>
                <title>Hospita Managment</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        margin: 20px;
                        background-color: #f4f4f4;
                    }
                    h1 {
                        color: #333;
                        text-align: center;
                    }
                    h2 {
                        color: #555;
                        border-bottom: 2px solid #ddd;
                        padding-bottom: 5px;
                    }
                    table {
                        width: 100%;
                        border-collapse: collapse;
                        margin: 20px 0;
                        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
                    }
                    th, td {
                        padding: 12px;
                        text-align: left;
                        border-bottom: 1px solid #ddd;
                    }
                    th {
                        background-color: #4CAF50;
                        color: white;
                    }
                    tr:nth-child(even) {
                        background-color: #f2f2f2;
                    }
                    tr:hover {
                        background-color: #ddd;
                    }
                </style>
            </head>
            <body>
                <h1>Your Domain Name</h1>

                <!-- Departments Table -->
                <h2>Departments</h2>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Staff Count</th>
                    </tr>
                    <xsl:for-each select="h:departments/h:department">
                        <tr>
                            <td><xsl:value-of select="@id"/></td>
                            <td><xsl:value-of select="h:name"/></td>
                            <td><xsl:value-of select="h:staffCount"/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <!-- Patients Table -->
                <h2>Patients</h2>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Admission Date</th>
                    </tr>
                    <xsl:for-each select="h:patients/h:patient">
                        <tr>
                            <td><xsl:value-of select="@id"/></td>
                            <td><xsl:value-of select="h:name"/></td>
                            <td><xsl:value-of select="h:age"/></td>
                            <td><xsl:value-of select="h:admissionDate"/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <!-- Appointments Table -->
                <h2>Appointments</h2>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Patient ID</th>
                        <th>Department ID</th>
                        <th>Date</th>
                    </tr>
                    <xsl:for-each select="h:appointments/h:appointment">
                        <tr>
                            <td><xsl:value-of select="@id"/></td>
                            <td><xsl:value-of select="h:patientId"/></td>
                            <td><xsl:value-of select="h:departmentId"/></td>
                            <td><xsl:value-of select="h:date"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
