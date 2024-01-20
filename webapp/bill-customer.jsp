<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bill List</title>
    <style>
        /* Add your custom styles here */
        body {
            padding-top: 20px;
        }

        th, td {
            text-align: center;
        }

        .btn-view {
            padding: 5px 10px;
        }
    </style>
</head>
<body>

<div class="container" style="margin: 50px auto;">
    <h2>Đơn hàng của tôi</h2>
    <table class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>Bill ID</th>
            <th>Customer Name</th>
            <th>Total Amount</th>
            <th>Shipping Fee</th>
            <th>Total Payment</th>
            <th>Creation Date</th>
            <th>Status</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="bill" items="${billList}">
            <tr>
                <td>${bill.id}</td>
                <td>${bill.userId}</td>
                <td>${bill.totalAmount}</td>
                <td>${bill.shippingFee}</td>
                <td>${bill.totalAmount + bill.shippingFee}</td>
                <td>${bill.orderDate}</td>
                <td>
                    <c:choose>
                        <c:when test="${bill.status eq 1}">Đang xử lý</c:when>
                        <c:when test="${bill.status eq 2}">Đang giao hàng</c:when>
                        <c:when test="${bill.status eq 3}">Đã hủy</c:when>
                        <c:when test="${bill.status eq 4}">Hoàn thành</c:when>
                        <c:otherwise>Unknown</c:otherwise>
                    </c:choose>
                </td>
                <td>
                    <a href="viewBill.jsp?billId=${bill.id}" class="btn btn-primary btn-view">View Details</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
