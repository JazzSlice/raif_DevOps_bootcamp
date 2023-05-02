touch mask_result
echo "ls -l /etc/host? > mask_result" >> mask_result
ls -l /etc/host? > mask_result 
echo '' >> mask_result
echo "ls -l /etc/host* >> mask_result" >> mask_result
ls -l /etc/host* >> mask_result
echo '' >> mask_result
echo "ls -l /etc/[mnv]*.conf >> mask_result" >> mask_result
ls -l /etc/[mnv]*.conf >> mask_result 
echo '' >> mask_result
echo "ls -l /etc/[!a-k]*.conf >> mask_result" >> mask_result
ls -l /etc/[!a-k]*.conf >> mask_result 
echo '' >> mask_result
echo "ls -l /etc/?[i]*.conf >> mask_result" >> mask_result
ls -l /etc/?[i]*.conf >> mask_result 
echo '' >> mask_result
echo "ls -l /etc/*[!A-Za-z0-9] >> mask_result" >> mask_result
ls -l /etc/*[!A-Za-z0-9] >> mask_result 
