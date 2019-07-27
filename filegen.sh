echo -n "Enter size file like 100 500K, 20M, 1G: "
read size
case $size in
    [0-9]*M)
    echo "create file about MegaByte"
    dd if=/dev/urandom of=genfile bs=$size count=1
    ;;
    [0-9]*K)
    echo "create file about KiloByte"
    dd if=/dev/urandom of=genfile bs=$size count=1
    ;;
    [0-9]*G)
    echo "create file about GigaByte"
    ;;
    [0-9]*)
    dd if=/dev/urandom of=genfile bs=$size count=1
    echo "create file about Byte"
esac