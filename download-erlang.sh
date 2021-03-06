#!/bin/sh

names=(
  accumulate
  all-your-base
  allergies
  anagram
  armstrong-numbers
  atbash-cipher
  bank-account
  beer-song
  bob
  book-store
  bracket-push
  change
  circular-buffer
  clock
  collatz-conjecture
  connect
  crypto-square
  custom-set
  darts
  diamond
  difference-of-squares
  dominoes
  etl
  forth
  gigasecond
  grade-school
  grains
  hamming
  hello-world
  isbn-verifier
  isogram
  largest-series-product
  leap
  list-ops
  luhn
  meetup
  minesweeper
  nth-prime
  nucleotide-count
  palindrome-products
  pangram
  parallel-letter-frequency
  pascals-triangle
  perfect-numbers
  phone-number
  poker
  prime-factors
  protein-translation
  pythagorean-triplet
  queen-attack
  rail-fence-cipher
  raindrops
  rational-numbers
  rna-transcription
  robot-simulator
  roman-numerals
  rotational-cipher
  run-length-encoding
  saddle-points
  satellite
  scrabble-score
  secret-handshake
  series
  sieve
  simple-linked-list
  sapce-age
  spiral-matrix
  strain
  sublist
  sum-of-multiples
  transpose
  triangle
  two-fer
  variable-length-quality
  word-count
  zipper
)

for name in "${names[@]}"
do
  exercism download --exercise=$name --track=erlang
done


