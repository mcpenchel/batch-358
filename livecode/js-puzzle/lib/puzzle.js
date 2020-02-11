// todo
// SUDOKU
// Get all the TDs
// Loop over the array of TDs
// ADD event listeners for each "button" (TD)
// Assign the black square to a variable
// Make 4 checks: 2 for same COLUMN and 2 for same ROW


const tds = document.querySelectorAll("td");

tds.forEach((td) => {
  td.addEventListener("click", (event) => {
    const black = document.querySelector(".empty");
    const blackRow = black.parentNode.rowIndex;
    const blackCollumn = black.cellIndex;
    const click = event.currentTarget;
    const clickRow = click.parentNode.rowIndex;
    const clickCollumn = click.cellIndex;

    if (((blackRow === clickRow) && ((blackCollumn === clickCollumn + 1) || (blackCollumn === clickCollumn - 1))) ||
       ((blackCollumn === clickCollumn) && ((blackRow === clickRow + 1) || (blackRow === clickRow - 1)))){
    // if ((sameRowAndAdjacent(black, click)) || (sameColumnAndAdjacent(black, click)))
      // switchSquares(black, click);
      black.innerText = click.innerText;
      click.innerText = "";
      black.classList.remove("empty");
      click.classList.add("empty");
    };
  })
});
