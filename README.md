# Some ideas to debug unreproducible builds

Some policies don't work without vDSO disabled. And a lot of runtime security engines don't work with vDSO disabled. Tetragon also doesn't work with it disabled, I had a push some custom images to work around. 
