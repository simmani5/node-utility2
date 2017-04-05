(set -e
# shCryptoAesWithGithubOrg npmdoc /bin/sh "$HOME/src/sandbox2/.task.sh"
# shCryptoAesWithGithubOrg kaizhu256 shTravisTaskPush "$HOME/src/sandbox2/.task.sh"
# shCryptoAesWithGithubOrg kaizhu256 shGithubRepoListTouch npmdoc/node-npmdoc-npm '[npm publishAfterCommitAfterBuild]'
# [$ /bin/sh .task.sh]

cd /tmp
if [ "$TRAVIS" ]
then
    npm install "kaizhu256/node-utility2#alpha"
    . ./node_modules/.bin/utility2
    eval "$(shTravisCryptoAesDecryptYml $CRYPTO_AES_KEY_npmdoc npmdoc)"
fi
. ./node_modules/.bin/utility2
export PATH="/tmp/node_modules/.bin:$PATH"
export npm_config_dir_utility2="/tmp/node_modules/utility2"
shInit

#!! [ '01.02.01 cron',
  #!! '2017.02.19 uglifyjs-lite',
  #!! '2017.02.20 swgg',
  #!! '2017.02.27 jslint-lite',
  #!! '2017.02.28 istanbul-lite',
  #!! '2017.03.07 electron-lite',
  #!! '2017.03.16 apidoc-lite',
  #!! '2017.03.16 db-lite',
  #!! '2017.03.19 swagger-ui-lite',
  #!! '2017.03.21 utility2' ]

#!! II=2450
#!! while [ "$II" -lt 3000 ]
#!! do
    #!! LIST="https://www.npmjs.com/browse/star?offset=$II"
    #!! printf "$LIST\n"
    #!! LIST="$(shNpmNameListGetFromUrl "$LIST")"
    #!! LIST2=""
    #!! for NAME in $LIST
    #!! do
        #!! NAME="$(shNpmNameNormalize $NAME)"
        #!! if [ "$NAME" ]
        #!! then
            #!! LIST2="$LIST2
#!! npmdoc/node-npmdoc-$NAME"
        #!! fi
    #!! done
    #!! LIST="$LIST2"
    #!! printf "$LIST\n"
    #!! shGithubRepoListCreate "$LIST" npmdoc
    #!! II="$((II+32))"
#!! done

#!! II=850
#!! while [ "$II" -lt 1000 ]
#!! II=1000
#!! while [ "$II" -lt 1001 ]
#!! do
    #!! LIST="https://www.npmjs.com/browse/star?offset=$II"
    #!! printf "$LIST\n"
    #!! #!! export TRAVIS_REPO_CREATE_FORCE=1
    #!! shNpmdocRepoListCreate "$LIST"
    #!! II="$((II+32))"
#!! done

#!! LIST="
#!! npmdoc/node-npmdoc-istanbul
#!! npmdoc/node-npmdoc-joi
#!! npmdoc/node-npmdoc-jshint
#!! npmdoc/node-npmdoc-jquery
#!! npmdoc/node-npmdoc-jscs
#!! npmdoc/node-npmdoc-jsdom
#!! npmdoc/node-npmdoc-jslint
#!! npmdoc/node-npmdoc-jsonfile
#!! npmdoc/node-npmdoc-jsonwebtoken
#!! npmdoc/node-npmdoc-karma
#!! npmdoc/node-npmdoc-koa
#!! npmdoc/node-npmdoc-log4js
#!! npmdoc/node-npmdoc-lodash
#!! npmdoc/node-npmdoc-knex
#!! npmdoc/node-npmdoc-marked
#!! npmdoc/node-npmdoc-mime
#!! npmdoc/node-npmdoc-minimist
#!! npmdoc/node-npmdoc-mkdirp
#!! npmdoc/node-npmdoc-mocha
#!! npmdoc/node-npmdoc-mongodb

#!! "
#!! export TRAVIS_REPO_CREATE_FORCE=1
#!! shNpmdocRepoListCreate "$LIST"
#!! shGithubRepoListTouch "$LIST" '[npm publishAfterCommitAfterBuild]'
)
