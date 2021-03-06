#!/bin/sh

names=(
  affine-cipher
  anagram
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
  pangram
  pascals-triangle
  perfect-numbers
  phone-number
  prime-factors
  queen-attack
  raindrops
  rna-transcription
  rotational-cipher
  scrabble-score
  sieve
  transpose
  two-fer
  word-count
)

for name in "${names[@]}"
do
  exercism download --exercise=$name --track=scheme
done
