this is a simple scripts that removes bloatware using the remove-appxpackage command in powershell. also removes the packages from the list of provisioned apps, which should prevent the apps from reinstalling for new users.

i have purposefully not added any registry changes that most debloat-scripts include, to keep windows stock and prevent issues. this means that there is nothing preventing windows from reinstalling some of the bloat during a feature update. (this problem was apparently a bug that microsoft supposedly fixed recently, but leaving this note anyway)

this method can not uninstall applications with a full uninstall wizard like mcafee, express vpn, office, etc.



programs that will be removed:

WindowsPhone
HoloCamera
HoloItemPlayerApp
HoloShell
Microsoft.MixedReality.Portal
MixedRealityLearning
RoomAdjustment
WhatsNew
RandomSaladGames
AMZNMobileLLC.AmazonAlexa
DropboxOEM
BingNews
BingWeather
GamingApp
MicrosoftJournal
MicrosoftOfficeHub
MicrosoftSolitaireCollection
People
Microsoft.Todos
Microsoft.Whiteboard
microsoft.windowscommunicationsapps
Microsoft.WindowsMaps
Microsoft.Xbox.TCUI
Microsoft.XboxGameOverlay
Microsoft.XboxGamingOverlay
Microsoft.XboxIdentityProvider
Microsoft.XboxSpeechToTextOverlay
ZuneMusic
ZuneVideo
TopHatch
