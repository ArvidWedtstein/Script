Dim message, sapi
 message=InputBox("Tell me a meme, your dankness:","MemeMachine")
 Set sapi=CreateObject("sapi.spvoice")
 sapi.Speak message