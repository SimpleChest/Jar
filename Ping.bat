@echo off
for /f %%a in (hosts) do (
for /f "tokens=10* delims= " %%b in ('ping -n 1 -w 3 %%a ^|find " Lost = "') do (
if %%b equ 1 (set xx=not) else (set xx=)
>> logfile echo %%a %%b %xx% ok
)
)

Report •

#2
