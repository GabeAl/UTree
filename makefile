CC=gcc
.PHONY : all

all: utree-build utree-compress utree-search utree-build_gg utree-search_gg

utree-build: itree.c ; $(CC) -m64 -std=gnu11 -O3 -fopenmp -D BUILD -D PFBITS=28 -D IXTYPE=uint32_t -o utree-build itree.c

utree-compress: itree.c ; $(CC) -m64 -std=gnu11 -O3 -fopenmp -D COMPRESS -D PFBITS=28 -D IXTYPE=uint32_t -o utree-compress itree.c

utree-search: itree.c ; $(CC) -m64 -std=gnu11 -O3 -fopenmp -D SEARCH -D PFBITS=28 -D IXTYPE=uint32_t -o utree-search itree.c

utree-build_gg: itree.c ; $(CC) -m64 -std=gnu11 -O3 -fopenmp -D BUILD_GG -D PFBITS=28 -D IXTYPE=uint32_t -o utree-build_gg itree.c

utree-search_gg: itree.c ; $(CC) -m64 -std=gnu11 -O3 -fopenmp -D SEARCH_GG -D PFBITS=28 -D IXTYPE=uint32_t -o utree-search_gg itree.c

