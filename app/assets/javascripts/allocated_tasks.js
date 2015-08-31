function deleteOptManager (id, nameOfRowCount, index){
    var xmlHttp = new XMLHttpRequest();
    xmlHttp.onreadystatechange = function() {
        if (xmlHttp.readyState == 4) {
            if(xmlHttp.responseText==="OK"){
                document.getElementById(id).remove();
                /*alert(nameOfRowCount.item(index));
                alert(nameOfRowCount.item(index).innerText);*/
                var count = Number(nameOfRowCount.item(index).innerText.substring(0, 1));
                /*alert(count);*/
                nameOfRowCount.item(index).innerText = "" + (count-1) + " tasks";
            }
        }
    }

    xmlHttp.open("Content-Type", "application/x-www-form-urlencoded");
    xmlHttp.open("Connection", "close");
    xmlHttp.open("delete", "/allocated_tasks/deleteOpportunity?id="+id , true );
    xmlHttp.send(null);
}

function confirmDelete(id, nameOfRowCount, index){
    r=window.confirm("Are you sure you want to delete this task?");
    if (r == true) {
        deleteOptManager(id, nameOfRowCount, index);
    }
}

function swap(targetId){
    if (document.getElementById(targetId)){
        target = document.getElementById(targetId);
        if (target.style.display == "none"){
            target.style.display = "";
        } else{
            target.style.display = "none";
        }
    }
}

function changeTasksColor (count, childNodeName) {
    if (count >= 5) {
        document.getElementById(childNodeName).style.backgroundColor = 'red';
        document.getElementById(childNodeName).style.border = '1px solid white';
    } else if (count >= 3) {
        document.getElementById(childNodeName).style.backgroundColor = '#FED000';
        document.getElementById(childNodeName).style.border = '1px solid white';
    } else {
        document.getElementById(childNodeName).style.backgroundColor = 'green';
        document.getElementById(childNodeName).style.border = '1px solid white';
    } 
}
