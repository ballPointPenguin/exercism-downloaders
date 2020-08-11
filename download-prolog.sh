#!/bin/sh

names=(
  anagram
  binary
  complex-numbers
  dominoes
  grains
  hamming
  hello-world
  isogram
  leap
  nucleotide-count
  pascals-triangle
  queen-attack
  rna-transcription
  satellite
  space-age
  spiral-matrix
  sum-of-multiples
  triangle
)

for name in "${names[@]}"
do
  exercism download --exercise=$name --track=prolog
done
