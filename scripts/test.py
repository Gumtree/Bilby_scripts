# Script control setup area
# script info
__script__.title = '<Script Template>'
__script__.version = '1.0'

import socket

def __run_script__(fns):
    binFile = "EOS.bin"
    hdfFile = "BBY0000014.nx.hdf"
    tarFile = "BBY0000014.tar"
    
    # eg: SRC:"/mht/.../BBY0000014.nx.hdf","/mht/.../EOS.bin"\nDST:"/mht/.../BBY0000014.tar"
    msg = "SRC:\"%s\",\"%s\"\r\nDST:\"%s\"\r\n" % (hdfFile, binFile, tarFile)
    
    host = 'ics1-bilby'
    port = 8123
    
    # create tcp/ip socket
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    sock.connect((host, port))
    
    try:
        # receive welcome message from daemon
        welcome = sock.recv(1024)
        if not welcome:
            raise RuntimeError("connection broken")
    
        print welcome
        print msg
    
        sock.send(msg)
        response = ""
        while True:
            recv = sock.recv(1024)
            if not recv:
                break
            response += recv
    
        print response
    
    finally:
        sock.close()