#DIRS ===============================================================================================================
if [ ! -d src/_inputs/json ]
  then :
    mkdir src/_inputs/json
fi
if [ ! -d src/_outputs ]
  then :
    mkdir src/_outputs
fi
if [ ! -d src/_outputs/csv ]
  then :
    mkdir src/_outputs/csv
fi
if [ ! -d src/_outputs/json ]
  then :
    mkdir src/_outputs/json
fi
if [ ! -d src/_outputs/csv/checkers ]
  then :
    mkdir src/_outputs/csv/checkers
fi
if [ ! -d src/_outputs/csv/statistic ]
  then :
    mkdir src/_outputs/csv/statistic
fi
if [ ! -d src/_outputs/json/saved-modules ]
  then :
    mkdir src/_outputs/json/saved-modules
fi

if [ ! -d src/_inputs/temp_images ]
  then :
    mkdir src/_inputs/temp_images
fi

if [ ! -d src/_inputs/temp_images_self ]
  then :
    mkdir src/_inputs/temp_images_self
fi

#GENERAL ===============================================================================================================
if [ ! -s src/_inputs/settings/global.js ]
  then :
    echo "\nCreating global.js config in src/_inputs/settings/"
    cp src/_inputs/settings/global.example.js src/_inputs/settings/global.js
fi

if [ ! -s src/_inputs/csv/proxies.csv ]
  then :
    echo "\nCreating proxies.csv in src/_inputs/csv/"
    touch src/_inputs/csv/proxies.csv && echo "proxy,updateProxyLink" >> src/_inputs/csv/proxies.csv
fi

if [ ! -s src/_outputs/csv/checkers/balance-checker.csv ]
  then :
    echo "\nCreating balance-checker.csv in src/_outputs/csv/checkers/"
    touch src/_outputs/csv/checkers/balance-checker.csv && echo "id,walletAddress,amount,currency,network" >> src/_outputs/csv/checkers/balance-checker.csv
fi

#MAIN ===============================================================================================================
if [ ! -s src/_inputs/json/google-credentials.json ]
  then :
    echo "\nCreating google-credentials.json in src/_inputs/json/"
    touch src/_inputs/json/google-credentials.json && echo "{}" >> src/_inputs/json/google-credentials.json
fi

if [ ! -s src/_inputs/csv/wallets.csv ]
  then :
    echo "\nCreating wallets.csv in src/_inputs/csv/"
    touch src/_inputs/csv/wallets.csv && echo "id,walletAddress,privKey,mnemonic,solanaAddress,transferAddress,proxy,updateProxyLink,solanaPrivKey" >> src/_inputs/csv/wallets.csv
fi
if [ ! -s src/_outputs/json/wallets.json ]
  then :
    echo "\nCreating wallets.json in src/_outputs/json/"
    touch src/_outputs/json/wallets.json && echo "[]" >> src/_outputs/json/wallets.json
fi

if [ ! -s src/_inputs/csv/emails.csv ]
  then :
    echo "\nCreating emails.csv in src/_inputs/csv/"
    touch src/_inputs/csv/emails.csv && echo "email,password,redirectedEmail,redirectedPassword,status,walletId" >> src/_inputs/csv/emails.csv
fi

if [ ! -s src/_inputs/csv/twitters.csv ]
  then :
    echo "\nCreating twitters.csv in src/_inputs/csv/"
    touch src/_inputs/csv/twitters.csv && echo "walletId,token,username,followers,createdAt,status,errorStatus,errorMessage" >> src/_inputs/csv/twitters.csv
fi

if [ ! -s src/_inputs/csv/discords.csv ]
  then :
    echo "\nCreating discords.csv in src/_inputs/csv/"
    touch src/_inputs/csv/discords.csv && echo "walletId,walletAddress,token,username,status" >> src/_inputs/csv/discords.csv
fi

#MITOSIS ===============================================================================================================
if [ ! -s src/_inputs/csv/mitosis-statistic.csv ]
  then :
    echo "\nCreating mitosis-statistic.csv in src/_inputs/csv/"
    touch src/_inputs/csv/mitosis-statistic.csv && echo "walletId,walletAddress,referralCode,usedReferralCode,usedRefCodeCount,mainFaucetDays,bonusFaucetDays" >> src/_inputs/csv/mitosis-statistic.csv
fi

#XTERIO ===============================================================================================================
if [ ! -s src/_inputs/csv/xterio-statistic.csv ]
  then :
    echo "\nCreating xterio-statistic.csv in src/_inputs/csv/"
    touch src/_inputs/csv/xterio-statistic.csv && echo "walletId,walletAddress,referralCode,refToUse,usedReferralCode,usedRefCodeCount,mail1,mail1Pass,usedMail" >> src/_inputs/csv/xterio-statistic.csv
fi

#LISK ===============================================================================================================
if [ ! -s src/_inputs/csv/lisk-statistic.csv ]
  then :
    echo "\nCreating lisk-statistic.csv in src/_inputs/csv/"
    touch src/_inputs/csv/lisk-statistic.csv && echo "walletId,walletAddress,points,rank" >> src/_inputs/csv/lisk-statistic.csv
fi

#ECLIPSE ===============================================================================================================
if [ ! -s src/_inputs/csv/eclipse-statistic.csv ]
  then :
    echo "\nCreating eclipse-statistic.csv in src/_inputs/csv/"
    touch src/_inputs/csv/eclipse-statistic.csv && echo "walletId,walletAddress,clicksWallet,clicksBalance,grassAmount" >> src/_inputs/csv/eclipse-statistic.csv
fi

#SAHARA ===============================================================================================================
if [ ! -s src/_inputs/csv/sahara-statistic.csv ]
  then :
    echo "\nCreating sahara-statistic.csv in src/_inputs/csv/"
    touch src/_inputs/csv/sahara-statistic.csv && echo "walletId,walletAddress,earnedAmount,rank" >> src/_inputs/csv/sahara-statistic.csv
fi

#SOMNIA ===============================================================================================================
if [ ! -s src/_inputs/csv/somnia-statistic.csv ]
  then :
    echo "\nCreating somnia-statistic.csv in src/_inputs/csv/"
    touch src/_inputs/csv/somnia-statistic.csv && echo "walletId,walletAddress" >> src/_inputs/csv/somnia-statistic.csv
fi
