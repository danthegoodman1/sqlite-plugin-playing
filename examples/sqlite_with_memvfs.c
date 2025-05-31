// Simple C constructor to initialize the Rust memvfs before SQLite starts
extern int initialize_memvfs(void);

__attribute__((constructor))
static void init() {
    initialize_memvfs();
} 
