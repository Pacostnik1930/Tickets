
<?php


$source = isset($_GET["source"]) ? $_GET["source"] : "";
$destination = isset($_GET["destination"]) ? $_GET["destination"] : "";
$date = isset($_GET["date"]) ? date("Y-m-d", strtotime($_GET["date"])) : "";
$time = isset($_GET["time"]) ? $_GET["time"] : "";

$servername = "localhost";
$username = "root";
$password = "1930";
$dbname = "railway";


$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$newDate = date_format(date_create($date),'Y-m-d');

$sql = "SELECT * FROM tickets WHERE source = '$source' AND destination = '$destination' AND date = '$newDate' AND time = '$time'";

$result = $conn->query($sql);


if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        
        echo "Место назначения: " . $row["destination"]. "<br>";
        echo "Место отправления: " . $row["source"]. "<br>";
        echo "Дата отправления: " . $row["date"]. "<br>"; 
        echo "Время отправления: " . $row["time"]. "<br>";       
        // и так далее
    }
} else {
    
    echo "Билеты не найдены";
}

$conn->close();
?>
<!DOCTYPE html>
<html>
<head>
    <title>Поиск билетов</title>
    <script src="search_tickets.js"></script>
</head>
<body>
    <h1>Поиск билетов</h1>
    <form method="GET" action="search_tickets.php" onsubmit="searchTickets(); return false;">
        <label for="source">Откуда:</label>
        <input type="text" id="source" name="source"><br><br>
        
        <label for="destination">Куда:</label>
        <input type="text" id="destination" name="destination"><br><br>
        
        <label for="date">Дата:</label>
        <input type="date" id="date" name="date"><br><br>
        
        <label for="time">Время:</label>
        <input type="time" id="time" name="time"><br><br>
        
        <input type="submit" value="Найти билеты">
    </form>
</body>
</html>