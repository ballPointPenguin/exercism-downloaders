#!/bin/bash

names=(
  acronym
  affine-cipher
  all-your-base
  allergies
  anagram
  armstrong-numbers
  atbash-cipher
  beer-song
  binary-search
  bob
  bowling
  change
  clock
  collatz-conjecture
  crypto-square
  darts
  diamond
  difference-of-squares
  diffie-hellman
  dnd-character
  error-handling
  food-chain
  forth
  gigasecond
  grains
  grep
  hamming
  hello-world
  house
  isbn-verifier
  isogram
  kindergarten-garden
  knapsack
  largest-series-product
  leap
  luhn
  markdown
  matching-brackets
  meetup
  nth-prime
  nucleotide-count
  ocr-numbers
  palindrome-products
  pangram
  pascals-triangle
  perfect-numbers
  pig-latin
  poker
  prime-factors
  protein-translation
  proverb
  pythagorean-triplet
  queen-attack
  rail-fence-cipher
  raindrops
  rational-numbers
  rectangles
  resistor-color-duo
  resistor-color-trio
  reverse-string
  rna-transcription
  robot-simulator
  roman-numerals
  rotational-cipher
  run-length-encoding
  satellite
  say
  scrabble-score
  secret-handshake
  series
  sieve
  simple-cipher
  space-age
  spiral-matrix
  sublist
  sum-of-multiples
  tournament
  transpose
  triangle
  twelve-days
  two-bucket
  two-fer
  variable-length-quantity
  word-count
  wordy
  yacht
)

for name in "${names[@]}"
do
  exercism download --exercise=$name --track=bash
done
