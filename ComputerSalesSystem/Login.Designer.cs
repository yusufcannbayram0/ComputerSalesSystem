namespace ComputerSalesSystem
{
    partial class Login
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Login));
            this.lbl_username = new System.Windows.Forms.Label();
            this.lbl_password = new System.Windows.Forms.Label();
            this.tbx_username = new System.Windows.Forms.TextBox();
            this.tbx_password = new System.Windows.Forms.TextBox();
            this.pcBox_login = new System.Windows.Forms.PictureBox();
            this.pcBox_user = new System.Windows.Forms.PictureBox();
            this.contextMenuStrip1 = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.çıkışToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.notifyIcon1 = new System.Windows.Forms.NotifyIcon(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.pcBox_login)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pcBox_user)).BeginInit();
            this.contextMenuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // lbl_username
            // 
            this.lbl_username.AutoSize = true;
            this.lbl_username.Font = new System.Drawing.Font("Papyrus", 14F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_username.ForeColor = System.Drawing.Color.DarkBlue;
            this.lbl_username.Location = new System.Drawing.Point(37, 220);
            this.lbl_username.Name = "lbl_username";
            this.lbl_username.Size = new System.Drawing.Size(141, 30);
            this.lbl_username.TabIndex = 1;
            this.lbl_username.Text = "Kullanıcı Adı :";
            // 
            // lbl_password
            // 
            this.lbl_password.AutoSize = true;
            this.lbl_password.Font = new System.Drawing.Font("Papyrus", 14F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_password.ForeColor = System.Drawing.Color.DarkBlue;
            this.lbl_password.Location = new System.Drawing.Point(37, 269);
            this.lbl_password.Name = "lbl_password";
            this.lbl_password.Size = new System.Drawing.Size(69, 30);
            this.lbl_password.TabIndex = 2;
            this.lbl_password.Text = "Şifre :";
            // 
            // tbx_username
            // 
            this.tbx_username.Font = new System.Drawing.Font("Microsoft YaHei UI", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tbx_username.ForeColor = System.Drawing.Color.Red;
            this.tbx_username.Location = new System.Drawing.Point(184, 220);
            this.tbx_username.Name = "tbx_username";
            this.tbx_username.Size = new System.Drawing.Size(160, 28);
            this.tbx_username.TabIndex = 3;
            // 
            // tbx_password
            // 
            this.tbx_password.Font = new System.Drawing.Font("Microsoft YaHei UI", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tbx_password.ForeColor = System.Drawing.Color.Red;
            this.tbx_password.Location = new System.Drawing.Point(184, 269);
            this.tbx_password.Name = "tbx_password";
            this.tbx_password.PasswordChar = '*';
            this.tbx_password.Size = new System.Drawing.Size(160, 28);
            this.tbx_password.TabIndex = 4;
            // 
            // pcBox_login
            // 
            this.pcBox_login.Image = ((System.Drawing.Image)(resources.GetObject("pcBox_login.Image")));
            this.pcBox_login.Location = new System.Drawing.Point(257, 385);
            this.pcBox_login.Name = "pcBox_login";
            this.pcBox_login.Size = new System.Drawing.Size(87, 65);
            this.pcBox_login.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pcBox_login.TabIndex = 6;
            this.pcBox_login.TabStop = false;
            this.pcBox_login.Click += new System.EventHandler(this.pictureBox1_Click);
            this.pcBox_login.MouseLeave += new System.EventHandler(this.pcBox_login_MouseLeave);
            this.pcBox_login.MouseHover += new System.EventHandler(this.pcBox_login_MouseHover);
            // 
            // pcBox_user
            // 
            this.pcBox_user.Image = ((System.Drawing.Image)(resources.GetObject("pcBox_user.Image")));
            this.pcBox_user.Location = new System.Drawing.Point(184, 120);
            this.pcBox_user.Name = "pcBox_user";
            this.pcBox_user.Size = new System.Drawing.Size(160, 94);
            this.pcBox_user.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pcBox_user.TabIndex = 7;
            this.pcBox_user.TabStop = false;
            // 
            // contextMenuStrip1
            // 
            this.contextMenuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.çıkışToolStripMenuItem});
            this.contextMenuStrip1.Name = "contextMenuStrip1";
            this.contextMenuStrip1.Size = new System.Drawing.Size(100, 26);
            // 
            // çıkışToolStripMenuItem
            // 
            this.çıkışToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("çıkışToolStripMenuItem.Image")));
            this.çıkışToolStripMenuItem.Name = "çıkışToolStripMenuItem";
            this.çıkışToolStripMenuItem.Size = new System.Drawing.Size(99, 22);
            this.çıkışToolStripMenuItem.Text = "Çıkış";
            this.çıkışToolStripMenuItem.Click += new System.EventHandler(this.çıkışToolStripMenuItem_Click);
            // 
            // notifyIcon1
            // 
            this.notifyIcon1.BalloonTipText = "Bilgisayar Satış Sİstemi\r\n";
            this.notifyIcon1.BalloonTipTitle = "Bilgisayar Satış Sistemi";
            this.notifyIcon1.ContextMenuStrip = this.contextMenuStrip1;
            this.notifyIcon1.Text = "notifyIcon1";
            this.notifyIcon1.Visible = true;
            // 
            // Login
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.DarkKhaki;
            this.ClientSize = new System.Drawing.Size(373, 494);
            this.Controls.Add(this.pcBox_user);
            this.Controls.Add(this.pcBox_login);
            this.Controls.Add(this.tbx_password);
            this.Controls.Add(this.tbx_username);
            this.Controls.Add(this.lbl_password);
            this.Controls.Add(this.lbl_username);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Login";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Login";
            ((System.ComponentModel.ISupportInitialize)(this.pcBox_login)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pcBox_user)).EndInit();
            this.contextMenuStrip1.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Label lbl_username;
        private System.Windows.Forms.Label lbl_password;
        private System.Windows.Forms.TextBox tbx_username;
        private System.Windows.Forms.TextBox tbx_password;
        private System.Windows.Forms.PictureBox pcBox_login;
        private System.Windows.Forms.PictureBox pcBox_user;
        private System.Windows.Forms.ContextMenuStrip contextMenuStrip1;
        private System.Windows.Forms.ToolStripMenuItem çıkışToolStripMenuItem;
        private System.Windows.Forms.NotifyIcon notifyIcon1;
    }
}

