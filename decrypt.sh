#!/bash/bin

SUB_DIC=./McGillX/*

for sb in $SUB_DIC;do
    if [ ! -d ./Decrypted/"${sb:2}" ]
    then
      mkdir -p ./Decrypted/"${sb:2}"
    fi
    for f in "$sb"/*;do
      #gpg --output ./McGillX/
      log_fn=`echo $f`
      log_f=${log_fn%.gpg}
      
      gpg --output ./Decrypted/"$log_f" --decrypt "$f"
    done
done