$('#subject').text(subject);
//references of elements outside X < main >
$('body > div:nth-child(4), :nth-child(5)').hide();
const sec = $('#counter');
var auto_putter, auto_counter, q = 0, userResult = Array(10).fill(0);
const progress = $('#progress');
const audioWrong = new Audio('./sounds/wrong.mp3');
const audioCorrect = new Audio('./sounds/correct.mp3');
const audioStart = new Audio('./sounds/start.mp3');
const audioNext = new Audio('./sounds/next.mp3');
const audioCongrats = new Audio('./sounds/congrats.mp3');
const audioAgain = new Audio('./sounds/again.mp3');
var clickNextQuestionPermitted = true;
const $main = $('main');
//Start exam by clicking 'commencer' button
$("#ready").click(function () {
    $('body > div:nth-child(4), :nth-child(5)').show();
    $main.html('<div class="row wow fadeInUp"> <div class="col-lg-3 col-md-6 col-sm-12 service-item text-center py-3"></div> <div class="col-lg-3 col-md-6 col-sm-12 service-item text-center py-3"></div> <div class="col-lg-3 col-md-6 col-sm-12 service-item text-center py-3"></div> <div class="col-lg-3 col-md-6 col-sm-12 service-item text-center py-3 ">Je vais réviser mon cours <i class="bi bi-file-excel"></i></div> </div>')
    audioStart.play();
    $main.hide(500, function () {
        putter();
        userControl();
    });
});
function userControl() {
    $('main > div > div').on('click', function (event) {
        var $event = event.target;
        console.log($event.innerText);
        if (clickNextQuestionPermitted) {
            clearInterval(auto_counter);         // Stop counter
            if (aStS($event.innerText, questions[q - 1][4])) {
                userResult[q - 1] = 1;
                $($event).css({ 'backgroundColor': 'rgb(6,187,204)', 'color': 'white','transform':'translateY(-10px)' }); //correct answer  transform: translateY(-10px);
                $('main > div').find('div').not($event).css('opacity', '.2');
                audioCorrect.play();
            }else if($event.innerText === 'Je vais réviser mon cours '){
                $($event).css({ 'backgroundColor': 'gray', 'color': 'white'});
            }else {
                $($event).css({ 'backgroundColor': 'red', 'color': 'white','transform':'translateY(10px)'}); //wrong answer
                audioWrong.play();
                $('main > div').find('div').filter(function () {              // colorize correct answer
                    return $(this).text() === questions[q - 1][4];
                }).css({'backgroundColor': 'rgb(6,187,204)', 'color': 'white','transform':'translateY(-10px)'});
                $('main > div').find('div').not($event).filter(function () {
                    return $(this).text() != questions[q - 1][4];
                }).css('opacity', '.1');
            }
            clickNextQuestionPermitted = false;  // prevent user from answering
            clearTimeout(auto_putter);
            setTimeout(putter, 2000);
        }
    });
}
function aStS(t, e) { var n = t.length, r = e.length, r = Math.max(n, r); return 80 <= 100 * (1 - levenshteinDistance(t, e) / r) } function levenshteinDistance(n, r) { var l = n.length, a = r.length; const i = Array(l + 1).fill().map(() => Array(a + 1).fill(0)); for (let t = 1; t <= l; t++)i[t][0] = t; for (let t = 1; t <= a; t++)i[0][t] = t; for (let e = 1; e <= a; e++)for (let t = 1; t <= l; t++)n.charAt(t - 1) === r.charAt(e - 1) ? i[t][e] = i[t - 1][e - 1] : i[t][e] = Math.min(i[t - 1][e] + 1, i[t][e - 1] + 1, i[t - 1][e - 1] + 1); return i[l][a] }
/*******TESTING***********/
//q is double used, to calcul total time, and to index question
for (var i = 0; i < 10; i++) {
    try {
        q += parseInt(questions[i][5]);
    } catch (e) {
        q += 0;
    }
}
$('header i').html(parseInt(q / 60) + 'm&nbsp;' + (q % 60) + 's');
q = 0; //return to origin
//to make questions show randomly
const array = [1, 2, 3];
function randomSort(a, b) {
    return Math.random() - 0.5;
}
//reorder showing possible answers
function reorderQuestions() {
    let checkArray = [array[0], array[1], array[2]];
    while (checkArray[0] == array[0] || checkArray[1] == array[1] || checkArray[2] == array[2]) {
        array.sort(randomSort);
    }
}
//the function controlls countdown and progress bar, and put questions and choices at random places
function putter() {
    clickNextQuestionPermitted = false;
    $('main > div > div').css({ 'animation': 'none', 'opacity': '1' });  //make things visible again
    update();
    audioNext.play();
    clearInterval(auto_counter);
    if (q < 10){
        $main.hide(500);
        //define countdown time
        sec.text((questions[q][5] - 1) > 9 ? (questions[q][5]) : '0' + (questions[q][5]).toString());
        sec.css('animation', 'none');
        $('main > div > div').css({ 'backgroundColor': 'white', 'color': 'black' });
        //put question
        $('#question').text(questions[q][0]);
        reorderQuestions();
        $('main > div > div:nth-child(1)').text(questions[q][array[0]]);
        $('main > div > div:nth-child(2)').text(questions[q][array[1]]);
        $('main > div > div:nth-child(3)').text(questions[q][array[2]]);
        //next question
        q++;
        //call to next time
        auto_putter = setTimeout(putter, questions[q - 1][5] * 1000);
        //activate countdown
        auto_counter = setInterval(counter, 1000);
    } else {
        const sum    = userResult.reduce((accumulator, currentValue) => accumulator + currentValue, 0);
        var congrats = sum > 5 ? "Superbe !"   : "essayer à nouveau";
        var save     = sum > 5 ? "enregistrez" : "encore une fois, vous pouvez le faire !";
        var failed     = sum > 5 ? false : true;
         $('body > div:nth-child(4), :nth-child(5)').hide();
        $('main').html(`
<div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
    <div class="container">
        <div class="text-center">
            <h6 class="section-title bg-white text-center text-primary px-3">resultat</h6>
            <h1 class="mb-5">${congrats}</h1>
            <h5 class="mb-0">${sum}/10</h5>
                <p>${fname}</p>
                <div id="save" onclick="save(${failed})" class="testimonial-text bg-light text-center p-4">
                <p class="mb-0">${save}</p>
                </div>
            </div>
        </div>
    </div>
</div> `);
        sec.hide();
        $('header > div:nth-child(3)').css('opacity', '0');       //hide counter
        sum > 5 ? $(':root').css('--result-color', 'var(--correct)') : $(':root').css('--result-color', 'var(--wrong)');
        animateResult(sum);
        setTimeout(function () {
            sum > 5 ? audioCongrats.play() && $('main section p').css('animation', 'succes 1s infinite, lightening 1s infinite') :   //or
                audioAgain.play() && $('section > p > button').text('try again') && $('main section p').css('animation', 'fail 1s infinite, lightening 1s infinite');
        }, sum * 250 + 500);
    }
    $main.show(500);
    setTimeout(function () {
        clickNextQuestionPermitted = true;
    }, 1500);
}
//change sum
function animateResult(number) {
    // Create a jQuery object for the span element
    var $span = $('#sum');
    // Animate the text from 0 to the given number
    $({ count: 0 }).animate({ count: number }, {
        duration: number * 250,
        step: function () {
            $span.text(Math.floor(this.count) + '/10');
        },
        complete: function () {
            $span.text(number + '/10');
        }
    });
}
//seconds countdown, controlled by questions's putter
function counter() {
    let sec_tmp = parseInt(sec.text());
    if (sec_tmp > 0) {
        sec.text(sec_tmp <= 10 ? '0' + (sec_tmp - 1).toString() : (parseInt(sec.text()) - 1).toString());
        if (sec_tmp < 11) {
            sec.css('animation', 'look-at-me 1s infinite');
        }
    }
}
//progress bar updater
function update() {
    progress.text(q < 10 ? (q + 1) + '/10' : q + '/10');
}
//send data to be updated
function save(failed) {
    $button = $('#save');
    $button.text('Veuillez patienter...');
    if (failed) {
        setTimeout(function () { location.reload(); }, 500);
    } else {
        setTimeout(function () {return 0;}, 500);
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "./actions/save_result.php", true);
        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function () {
            if (xhr.readyState === 4 && xhr.status === 200) {
                console.log(xhr.responseText);
            }
        };
          const sum = userResult.reduce((accumulator, currentValue) => accumulator + currentValue, 0);
        const data = "subject=" + subject + "&note=" + sum;
        xhr.send(data);
        setTimeout(
            function () {
                alert('Enregistrement réussi !');
                window.location.href = "../choice/";
         }, 500);
    }
};
