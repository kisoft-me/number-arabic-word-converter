# Number Arabic Word Converter

[![status-badge](https://ci.kisoft.me/api/badges/2/status.svg)](https://ci.kisoft.me/repos/2)

A simple JSON API to convert numbers(integers) into their correct arabic text. 
Based on https://github.com/MohsenAlyafei/nArabicWords.

## Why does this exist

Mostly because the algorithm used is the most comprehensive one I saw, 
but its only available in JS and we need it for a different few backens to 
issue arabic documents that for legal purposes need to have the number
written as text.

## How to Use

In order to run the service, you can use the docker image 

``docker run -d -p 3000:3000 kisoft/number-arabic-word-converter:latest``

the app will always run on port 3000 (there is no way to change this right now)

To convert a number, make a ``POST`` request  to  ``/convert`` with the format

```json
{
  "number":string|integer,
  "options": object
}
```

where ``options`` is the same options available [here](kisoft/number-arabic-word-converter).
Same restrictions and conditions apply. 

the response format is

```json
{ 
  "number":string|integer,
  "numberText":string,
  "options": object
}

```

