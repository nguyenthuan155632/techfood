$(function () {
  navigator.mediaDevices.getUserMedia({
    audio: true
  }).then(stream => {
    handlerFunction(stream)
  })
  
  let record = $('#record');
  let stopRecord = $('#stopRecord');
  let recordedAudio = $('#recordedAudio');
  let rec;
  let audioChunks = [];
  // let fd = new FormData();
  
  function handlerFunction(stream) {
    rec = new MediaRecorder(stream);
    rec.ondataavailable = e => {
      audioChunks.push(e.data);
      if (rec.state == "inactive") {
        let blob = new Blob(audioChunks, {
          type: 'audio/mpeg-3'
        });
        recordedAudio.src = URL.createObjectURL(blob);
        recordedAudio.controls = true;
        recordedAudio.autoplay = true;
        sendData(blob)
      }
    }
  }
  
  function sendData(blob) {
    console.log(blob);
    // fd.append('fname', 'test.wav');
    // fd.append('data', blob);
    $.ajax({
      method: 'POST',
      url: 'https://api.openfpt.vn/fsr',
      async: true,
      crossDomain: true,
      dataType: 'blob',
      headers: {
        'api_key':'be38eec7fcba4baa948df487d54c8f9b',
        "Access-Control-Allow-Origin":"*"
      },
      data: blob,
      processData: false,
      contentType: false
    }).done(function(json) {
      console.log(json);
    });
  }
  
  record.on('click', function(e) {
    console.log('I was clicked')
    // record.disabled = true;
    // stopRecord.disabled = false;
    audioChunks = [];
    rec.start();
  })
  
  stopRecord.on('click', function(e) {
    console.log('I was clicked')
    // record.disabled = true;
    // stopRecord.disabled = false;
    audioChunks = [];
    rec.stop();
  })
});