Start-Sleep -Milliseconds 500
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12;
Start-Sleep -Milliseconds 500

Do {
   Add-Type -AssemblyName System.Speech
   $uri = 'https://catfact.ninja/fact'
   $headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
   $headers.Add('Accept','Application/Json')
   $SpeechSynth = New-Object System.Speech.Synthesis.SpeechSynthesizer
   $CatFact = (ConvertFrom-Json (Invoke-WebRequest -Uri $uri -Headers $headers)).fact
   $SpeechSynth.Speak("Did you know?")
   $SpeechSynth.Speak($CatFact)
 }
While ($true)