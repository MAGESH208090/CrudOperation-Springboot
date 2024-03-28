<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add Task</title>
    <style>
        .box {
            display: flex;
            gap: 1rem;
            flex-wrap: wrap;
        }

        .date, .check, .add {
            flex-grow: 1;
        }

        .add {
            background-color: rgb(186, 221, 255);
        }
    </style>
</head>
<body>
    <form:form modelAttribute="newTask" class="box" id="resizeBtn" action="/save" method="post">
        <form:hidden path="id" />
        <form:input path="taskName" cssClass="description" placeholder="Task Name" />
        <form:input path="taskDate" cssClass="date" type="date" placeholder="Task Date" />
        <p><form:checkbox path="isCompleted" cssClass="check" />Completed</p>
        <form:button cssClass="add">Add Task</form:button>
    </form:form>
</body>
</html>
