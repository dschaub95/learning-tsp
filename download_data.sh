# wget --no-check-certificate 'https://drive.google.com/uc?id=152mpCze-v4d0m9kdsCeVkLdHFkjeDeF5' -O tsp-data.tar.gz
# wget --load-cookies /tmp/cookies.txt "https://drive.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://drive.google.com/uc?id=152mpCze-v4d0m9kdsCeVkLdHFkjeDeF5' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=152mpCze-v4d0m9kdsCeVkLdHFkjeDeF5" -O tsp-data.tar.gz && rm -rf /tmp/cookies.txt

fileId=152mpCze-v4d0m9kdsCeVkLdHFkjeDeF5
fileName=tsp-data.tar.gz
curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=${fileId}" > /dev/null
code="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"  
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${code}&id=${fileId}" -o ${fileName} 