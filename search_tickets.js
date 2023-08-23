function searchTickets() {
    var source = document.getElementById("source").value;
    var destination = document.getElementById("destination").value;
    var date = document.getElementById("date").value;
    var time = document.getElementById("time").value;
    
    // Отправка данных на сервер
    var xhr = new XMLHttpRequest();
    xhr.open("GET", "search_tickets.php?source=" + source + "&destination=" + destination + "&date=" + date + "&time=" + time, true);
    
    xhr.onreadystatechange = function() {
        if (xhr.readyState === 4 && xhr.status === 200) {
            // Обработка ответа от сервера
            var response = xhr.responseText;
            // Делайте что-то с полученным результатом
        }
    };
    
    xhr.send();
}