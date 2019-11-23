:loop

cd %~dp0
git add . && git commit -m "from work pc master branch" && git push
rem ping 127.0.0.1 -n 60 > nul
timeout 120

goto loop


