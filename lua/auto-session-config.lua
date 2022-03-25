require('auto-session').setup {
    log_level = 'info',
    auto_session_enable_last_session=true,
    auto_save_enabled=true,
    auto_restore_enabled=true,
    auto_session_allowed_dirs = {'~/Documents/ank/ank-mobile', '~/Documents/ank/ank-bff-mobile'}
}
