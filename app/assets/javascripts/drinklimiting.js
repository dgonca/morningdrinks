function limitDrinkAttributes() {
  var coffeeType = $(".coffee-type-input");
  var sugarLevel = $(".sugar-level-input");
  var milkLevel = $(".milk-level-input");

  $(".coffee-drink").on("click", function(){
    console.log("inside the click on coffee");
    coffeeType.prop( "disabled", false );
    sugarLevel.prop( "disabled", false );
    milkLevel.prop( "disabled", false );

  });

  $(".tea-drink").on("click", function(){
    console.log("inside the click on tea");
    console.log(coffeeType);
    coffeeType.prop( "disabled", true );
    sugarLevel.prop( "disabled", false );
    milkLevel.prop( "disabled", false );

  });

  $(".orange-juice-drink").on("click", function(){
    coffeeType.prop( "disabled", true );
    sugarLevel.prop( "disabled", true );
    milkLevel.prop( "disabled", true );
  });
}
