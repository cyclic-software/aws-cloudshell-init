# Set the bin folder into the path
PATH=$PATH:$HOME/.config/aws-cloudshell-init/bin

export PATH

pushd $HOME/.config/aws-cloudshell-init

if [ ! -z "$(git fetch --dry-run)" ]; do
    echo "Cloudshell init scripts are behind those on github. Consider updating:"
    echo ""
    echo "  pushd $HOME/.config/aws-cloudshell-init; git pull; popd"
    echo ""
done
