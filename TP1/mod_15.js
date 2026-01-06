function main(){
    function multiplier(a,b){
        return a*b;
    }

    function additionner(a,b){
        return a+b;
    }

    function soustraire(a,b){
        return a-b;
    }

    function diviser(a,b){
        return a/b;
    }

    module.exports.multiplier = multiplier;
    
    module.exports.additionner = additionner;
    
    module.exports.soustraire = soustraire;
    
    module.exports.diviser = diviser;
}

module.exports = main;