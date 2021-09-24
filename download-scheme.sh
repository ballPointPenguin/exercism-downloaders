#!/bin/bash

names=(
  accumulate
  acronym
  affine-cipher
  anagram
  armstrong-numbers
  atbash-cipher
  binary-search
  bob
  change
  collatz-conjecture
  difference-of-squares
  forth
  grains
  hamming
  hello-world
  knapsack
  leap
  matching-brackets
  nucleotide-count
  octal
  pangram
  pascals-triangle
  perfect-numbers
  phone-number
  prime-factors
  queen-attack
  raindrops
  rna-transcription
  roman-numerals
  rotational-cipher
  scrabble-score
  sieve
  strain
  sum-of-multiples
  transpose
  triangle
  trinary
  two-fer
  word-count
)

for name in "${names[@]}"
do
  exercism download --exercise=$name --track=scheme
done
