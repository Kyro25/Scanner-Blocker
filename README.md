# **Hello!**
## My name is Kyrollos and this is the first small "program" that I'm publishing

### This is a tool that blocks Censys, Shodan, Shadowserver, PAN Expanse, and DigitalOcean.
Most of these are tools that find vulnerabilities in your Computer/VPS network. I recommend using these tools first to ensure that your system is safe from attacks. 
After you're satisfied with your system vulnerability, You can use the tool I provided to block these tools from connecting to your system. 
Please keep in mind, some tools have a history check in place so it won't be completely invisible but it will block new searches.

## --- Updated Method: Powershell (Requires no download, just one line of code) ---

1. Please run PowerShell as Administrator
2. Copy and Paste the line below and hit enter

```
irm https://dev.kyrollose.com/scanner-blocker/ | iex
```

### Old Method: Download (Still works but not necessary)
- To Block, please install the zip file and run block_scanners.bat
- To Unblock, please run unblock_scanners.bat from the same zip file

**This was created for Windows and has been tested on Windows. You may edit your own copy to your liking.**
