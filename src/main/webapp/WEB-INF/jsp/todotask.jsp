<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
    <title>List of Tasks</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        .box {
            display: flex;
            gap: 1rem;
            flex-wrap: wrap;
            align-items: center;
        }

        .add-task-btn {
            padding: 10px 20px;
            background-color: rgb(186, 221, 255);
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        .add-task-btn:hover {
            background-color: rgb(156, 201, 231);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        .actions {
            white-space: nowrap;
        }

        .update-btn {
            background-color: #4CAF50;
            border: none;
            border-radius: 3px;
            color: white;
            cursor: pointer;
            font-size: 14px;
            transition: background-color 0.3s;
            padding: 5px 10px;
            margin-right: 5px;
        }

        .update-btn:hover {
            background-color: #45a049;
        }

        .delete-btn {
            background-color: #f44336;
            border: none;
            border-radius: 3px;
            color: white;
            cursor: pointer;
            font-size: 14px;
            transition: background-color 0.3s;
            padding: 5px 10px;
        }

        .delete-btn:hover {
            background-color: #d32f2f;
        }
    </style>
</head>
<body>
    <div class="box">
        <form:form action="/add" method="get">
            <button type="submit" class="add-task-btn">Add Task</button>
        </form:form>
    </div>

    <span class="success">${taskSaved}</span>

    <h2>List of Tasks</h2>
    <table>
        <tr>
            <th>Task Name</th>
            <th>Task Date</th>
            <th>Is Completed</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
        <c:forEach items="${taskList}" var="task">
            <tr>
                <td>${task.taskName}</td> <!-- Updated to task.taskName -->
                <td><fmt:formatDate value="${task.taskDate}" pattern="yyyy-MM-dd" /></td> <!-- Updated to task.taskDate -->
                <td>${task.isCompleted}</td> <!-- Updated to task.isCompleted -->
                <td class="actions">
                    <form:form action="/update-task" method="get">
                        <input type="hidden" name="id" value="${task.id}" />
                        <button type="submit" class="update-btn">Update</button>
                    </form:form>
                </td>
                <td class="actions">
                    <form:form action="/delete-task" method="post">
                        <input type="hidden" name="id" value="${task.id}" />
                        <button type="submit" class="delete-btn">Delete</button>
                    </form:form>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
