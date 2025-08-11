-- Set leader key to be space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
local opts = { noremap = true, silent = true }

-- Java keymap
keymap.set("n", "<leader>jc", ":term mvn compile<CR>", { desc = "Compile current Maven project" })
keymap.set("n", "<leader>jt", ":term mvn test<CR>", { desc = "Run test" })
keymap.set("n", "<leader>jj", "<cmd>JavaRunnerRunMain<CR>", { desc = "Run every Main method" })
keymap.set("v", "<leader>jv", "<cmd>JavaRefactorExtractVariable<CR>", { desc = "Extract to a new variable" })
keymap.set("v", "<leader>jm", "<cmd>JavaRefactorExtractMethod<CR>", { desc = "Extract to a new method" })

-- Rust keymap.
keymap.set("n", "<leader>cd", function()
  vim.cmd("TermExec cmd='cargo run'")
end, { desc = "Run the rust project." })

-- Disable arrow key
keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')
keymap.set("i", "<left>", '<cmd>echo "Use h to move!!"<CR>')
keymap.set("i", "<right>", '<cmd>echo "Use l to move!!"<CR>')
keymap.set("i", "<up>", '<cmd>echo "Use k to move!!"<CR>')
keymap.set("i", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- Do things without affecting the rigister
keymap.set("n", "x", '"_x')
keymap.set("v", "x", '"_x')

--Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Exit Vim's terminal mode
keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Go up and down
keymap.set("n", "t", "k")

-- Invert b and f for window scrolling
keymap.set("n", "<C-f>", "<C-b>")
keymap.set("n", "<C-b>", "<C-f>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- nvim tree navigation
keymap.set("n", "<C-h>", "<C-w>w")

-- Open terminal
keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<CR>", { desc = "Open terminale" })
