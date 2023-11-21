document.addEventListener('DOMContentLoaded', function(){
    let input = document.querySelector('input');
    input.addEventListener('keyup', function(event){
        let name = document.querySelector('p');
        if (input.value) {
            name.innerHTML = `hello, ${input.value}...`;
        }
        else {
            name.innerHTML = 'hello, friend...';
        }
    });
});