document.getElementById('toggelButton').addEventListener("click", function(){
    var extraImage = document.getElementById('extraImage');
    if (extraImage.style.display === 'none'){
        extraImage.style.display = 'block';
        this.textContent = 'Скрыть';
    } else {
        extraImage.style.display = 'none';
        this.textContent = 'Показать еще';
    }
})