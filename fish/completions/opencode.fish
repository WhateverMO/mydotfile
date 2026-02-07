# OpenCode Fish Shell Completion

# Check if no subcommand has been provided yet
function __fish_opencode_no_subcommand
    set -l cmd (commandline -opc)
    if test (count $cmd) -eq 1
        return 0
    end
    # Check if a subcommand already exists
    for sub in completion acp mcp attach run debug auth agent upgrade uninstall serve web models stats export import github pr session
        if contains -- $sub $cmd[2..]
            return 1
        end
    end
    return 0
end

# Global options
complete -c opencode -n '__fish_opencode_no_subcommand' -s h -l help -d 'Display help information'
complete -c opencode -n '__fish_opencode_no_subcommand' -s v -l version -d 'Show version number'
complete -c opencode -n '__fish_opencode_no_subcommand' -l print-logs -d 'Print logs to stderr'
complete -c opencode -n '__fish_opencode_no_subcommand' -l log-level -d 'Log level' -x -a 'DEBUG INFO WARN ERROR'
complete -c opencode -n '__fish_opencode_no_subcommand' -l port -d 'Port to listen on'
complete -c opencode -n '__fish_opencode_no_subcommand' -l hostname -d 'Hostname to listen on'
complete -c opencode -n '__fish_opencode_no_subcommand' -l mdns -d 'Enable mDNS service discovery'
complete -c opencode -n '__fish_opencode_no_subcommand' -l mdns-domain -d 'Custom domain name for mDNS service'
complete -c opencode -n '__fish_opencode_no_subcommand' -l cors -d 'Additional domains for CORS'
complete -c opencode -n '__fish_opencode_no_subcommand' -s m -l model -d 'Model to use (provider/model)' -x
complete -c opencode -n '__fish_opencode_no_subcommand' -s c -l continue -d 'Continue the last session'
complete -c opencode -n '__fish_opencode_no_subcommand' -s s -l session -d 'Session ID to continue' -x
complete -c opencode -n '__fish_opencode_no_subcommand' -l prompt -d 'Prompt to use'
complete -c opencode -n '__fish_opencode_no_subcommand' -l agent -d 'Agent to use'

# Main commands
complete -c opencode -f -n '__fish_opencode_no_subcommand' -a completion -d 'Generate shell completion script'
complete -c opencode -f -n '__fish_opencode_no_subcommand' -a acp -d 'Start ACP (Agent Client Protocol) server'
complete -c opencode -f -n '__fish_opencode_no_subcommand' -a mcp -d 'Manage MCP (Model Context Protocol) servers'
complete -c opencode -f -n '__fish_opencode_no_subcommand' -a attach -d 'Attach to a running opencode server'
complete -c opencode -f -n '__fish_opencode_no_subcommand' -a run -d 'Run opencode with a message'
complete -c opencode -f -n '__fish_opencode_no_subcommand' -a debug -d 'Debugging and troubleshooting tools'
complete -c opencode -f -n '__fish_opencode_no_subcommand' -a auth -d 'Manage credentials'
complete -c opencode -f -n '__fish_opencode_no_subcommand' -a agent -d 'Manage agents'
complete -c opencode -f -n '__fish_opencode_no_subcommand' -a upgrade -d 'Upgrade opencode to latest version'
complete -c opencode -f -n '__fish_opencode_no_subcommand' -a uninstall -d 'Uninstall opencode and remove related files'
complete -c opencode -f -n '__fish_opencode_no_subcommand' -a serve -d 'Starts a headless opencode server'
complete -c opencode -f -n '__fish_opencode_no_subcommand' -a web -d 'Start opencode server and open web interface'
complete -c opencode -f -n '__fish_opencode_no_subcommand' -a models -d 'List all available models'
complete -c opencode -f -n '__fish_opencode_no_subcommand' -a stats -d 'Show token usage and cost statistics'
complete -c opencode -f -n '__fish_opencode_no_subcommand' -a export -d 'Export session data as JSON'
complete -c opencode -f -n '__fish_opencode_no_subcommand' -a import -d 'Import session data from JSON file or URL'
complete -c opencode -f -n '__fish_opencode_no_subcommand' -a github -d 'Manage GitHub agent'
complete -c opencode -f -n '__fish_opencode_no_subcommand' -a pr -d 'Fetch and checkout a GitHub PR branch'
complete -c opencode -f -n '__fish_opencode_no_subcommand' -a session -d 'Manage sessions'

# Subcommand-specific options - use file completion
complete -c opencode -n '__fish_seen_subcommand_from attach' -F -d 'Server URL to attach to'
complete -c opencode -n '__fish_seen_subcommand_from import' -F -d 'File path or URL to import from'
complete -c opencode -n '__fish_seen_subcommand_from export' -F -d 'Session ID to export'
complete -c opencode -n '__fish_seen_subcommand_from models' -F -d 'Provider name'
complete -c opencode -n '__fish_seen_subcommand_from pr' -F -d 'Pull request number'
complete -c opencode -n '__fish_seen_subcommand_from upgrade' -F -d 'Target version to upgrade to'
complete -c opencode -n '__fish_seen_subcommand_from run' -F -d 'Message to run with'