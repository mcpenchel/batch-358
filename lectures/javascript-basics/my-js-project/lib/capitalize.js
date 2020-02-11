const capitalize = (word) => {
  const firstLetter = word[0].toUpperCase();
  const otherLetters = word.substring(1).toLowerCase();

  return `${firstLetter}${otherLetters}`;
}

console.log(capitalize("MASTODON"));
