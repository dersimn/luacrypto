Fork of https://github.com/mkottman/luacrypto

Compile with Docker:

	git clone <...>
	cd <...>
	docker build -t luacrypto .
	id=$(docker create luacrypto)
	docker cp $id:/usr/local/lib/lua/5.1/crypto.so ./crypto.so
	docker rm -v $id
