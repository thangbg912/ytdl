# izikit/ytdl
Youtube download and split to mp3
## Maintained by: [thangbg912@gmail.com](izikit.com)

## Usage
### To build docker image
```bash
$ docker build -t izikit/ytdl .
```
### To run docker + download-split from youtube into mp3 chapters
```bash
$ docker run --rm -v $(pwd):/storage izikit/ytdl --split https://www.youtube.com/watch?v=NGuoJ0CQfqA
```