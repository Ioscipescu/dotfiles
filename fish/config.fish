if status is-interactive
    # Commands to run in interactive sessions can go here
end


set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/ben/.ghcup/bin $PATH # ghcup-env

# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '/home/ben/.opam/opam-init/init.fish' && source '/home/ben/.opam/opam-init/init.fish' > /dev/null 2> /dev/null; or true
# END opam configuration
