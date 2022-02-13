
namespace ValgomatCSharp
{
    partial class frm
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frm));
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea5 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Series series5 = new System.Windows.Forms.DataVisualization.Charting.Series();
            this.uenigbtn = new System.Windows.Forms.Button();
            this.questiontxtbox = new System.Windows.Forms.TextBox();
            this.enigbtn = new System.Windows.Forms.Button();
            this.nøytralbtn = new System.Windows.Forms.Button();
            this.StartBtn = new System.Windows.Forms.Button();
            this.resChart = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.questionLbl = new System.Windows.Forms.Label();
            this.saveFileDialog = new System.Windows.Forms.SaveFileDialog();
            this.settingsPnl = new System.Windows.Forms.Panel();
            this.ENimgBtn = new System.Windows.Forms.Button();
            this.DEimgBtn = new System.Windows.Forms.Button();
            this.NOimgBtn = new System.Windows.Forms.Button();
            this.closeBtn = new System.Windows.Forms.Button();
            this.ENrdoBtn = new System.Windows.Forms.RadioButton();
            this.DErdoBtn = new System.Windows.Forms.RadioButton();
            this.NOrdoBtn = new System.Windows.Forms.RadioButton();
            this.langLbl = new System.Windows.Forms.Label();
            this.settingsLbl = new System.Windows.Forms.Label();
            this.toolTip = new System.Windows.Forms.ToolTip(this.components);
            this.prgBar = new System.Windows.Forms.ProgressBar();
            this.statusStrip1 = new System.Windows.Forms.StatusStrip();
            this.toolStripLblStng = new System.Windows.Forms.ToolStripStatusLabel();
            this.toolStripLblSave = new System.Windows.Forms.ToolStripStatusLabel();
            this.pnlMeningsBtn = new System.Windows.Forms.Panel();
            this.resetBtn = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.resChart)).BeginInit();
            this.settingsPnl.SuspendLayout();
            this.statusStrip1.SuspendLayout();
            this.pnlMeningsBtn.SuspendLayout();
            this.SuspendLayout();
            // 
            // uenigbtn
            // 
            this.uenigbtn.BackColor = System.Drawing.Color.DimGray;
            resources.ApplyResources(this.uenigbtn, "uenigbtn");
            this.uenigbtn.FlatAppearance.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.uenigbtn.FlatAppearance.BorderSize = 3;
            this.uenigbtn.FlatAppearance.MouseDownBackColor = System.Drawing.Color.Gray;
            this.uenigbtn.FlatAppearance.MouseOverBackColor = System.Drawing.Color.DimGray;
            this.uenigbtn.ForeColor = System.Drawing.Color.White;
            this.uenigbtn.Name = "uenigbtn";
            this.uenigbtn.UseVisualStyleBackColor = false;
            this.uenigbtn.Click += new System.EventHandler(this.uenigbtn_Click);
            // 
            // questiontxtbox
            // 
            this.questiontxtbox.BackColor = System.Drawing.Color.Silver;
            this.questiontxtbox.BorderStyle = System.Windows.Forms.BorderStyle.None;
            resources.ApplyResources(this.questiontxtbox, "questiontxtbox");
            this.questiontxtbox.ForeColor = System.Drawing.Color.Black;
            this.questiontxtbox.Name = "questiontxtbox";
            this.questiontxtbox.ReadOnly = true;
            this.questiontxtbox.ShortcutsEnabled = false;
            this.questiontxtbox.TabStop = false;
            // 
            // enigbtn
            // 
            this.enigbtn.BackColor = System.Drawing.Color.DimGray;
            resources.ApplyResources(this.enigbtn, "enigbtn");
            this.enigbtn.Cursor = System.Windows.Forms.Cursors.AppStarting;
            this.enigbtn.FlatAppearance.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.enigbtn.FlatAppearance.BorderSize = 3;
            this.enigbtn.FlatAppearance.MouseDownBackColor = System.Drawing.Color.Gray;
            this.enigbtn.FlatAppearance.MouseOverBackColor = System.Drawing.Color.Gray;
            this.enigbtn.ForeColor = System.Drawing.Color.White;
            this.enigbtn.Name = "enigbtn";
            this.enigbtn.UseVisualStyleBackColor = false;
            this.enigbtn.Click += new System.EventHandler(this.enigbtn_Click);
            // 
            // nøytralbtn
            // 
            this.nøytralbtn.BackColor = System.Drawing.Color.DimGray;
            resources.ApplyResources(this.nøytralbtn, "nøytralbtn");
            this.nøytralbtn.FlatAppearance.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.nøytralbtn.FlatAppearance.BorderSize = 3;
            this.nøytralbtn.FlatAppearance.MouseDownBackColor = System.Drawing.Color.Gray;
            this.nøytralbtn.FlatAppearance.MouseOverBackColor = System.Drawing.Color.Gray;
            this.nøytralbtn.ForeColor = System.Drawing.Color.White;
            this.nøytralbtn.Name = "nøytralbtn";
            this.nøytralbtn.UseVisualStyleBackColor = false;
            this.nøytralbtn.Click += new System.EventHandler(this.nøytralbtn_Click);
            // 
            // StartBtn
            // 
            this.StartBtn.BackColor = System.Drawing.Color.LightGray;
            this.StartBtn.FlatAppearance.BorderColor = System.Drawing.Color.Black;
            this.StartBtn.FlatAppearance.BorderSize = 5;
            this.StartBtn.FlatAppearance.MouseDownBackColor = System.Drawing.Color.DarkGray;
            this.StartBtn.FlatAppearance.MouseOverBackColor = System.Drawing.Color.DarkGray;
            resources.ApplyResources(this.StartBtn, "StartBtn");
            this.StartBtn.ForeColor = System.Drawing.Color.Black;
            this.StartBtn.Name = "StartBtn";
            this.StartBtn.UseVisualStyleBackColor = false;
            this.StartBtn.Click += new System.EventHandler(this.StartBtn_Click);
            // 
            // resChart
            // 
            this.resChart.BackColor = System.Drawing.Color.Silver;
            resources.ApplyResources(this.resChart, "resChart");
            this.resChart.BackImageAlignment = System.Windows.Forms.DataVisualization.Charting.ChartImageAlignmentStyle.Center;
            this.resChart.BackImageWrapMode = System.Windows.Forms.DataVisualization.Charting.ChartImageWrapMode.Unscaled;
            this.resChart.BackSecondaryColor = System.Drawing.Color.Silver;
            this.resChart.BorderlineColor = System.Drawing.Color.Transparent;
            this.resChart.BorderSkin.BackColor = System.Drawing.Color.Silver;
            this.resChart.BorderSkin.BackImageAlignment = System.Windows.Forms.DataVisualization.Charting.ChartImageAlignmentStyle.Center;
            this.resChart.BorderSkin.BackImageTransparentColor = System.Drawing.Color.Transparent;
            this.resChart.BorderSkin.BackImageWrapMode = System.Windows.Forms.DataVisualization.Charting.ChartImageWrapMode.Scaled;
            this.resChart.BorderSkin.BorderColor = System.Drawing.Color.Transparent;
            this.resChart.BorderSkin.BorderWidth = 0;
            this.resChart.BorderSkin.PageColor = System.Drawing.Color.Silver;
            chartArea5.Name = "ChartArea1";
            this.resChart.ChartAreas.Add(chartArea5);
            this.resChart.Name = "resChart";
            this.resChart.Palette = System.Windows.Forms.DataVisualization.Charting.ChartColorPalette.Pastel;
            series5.ChartArea = "ChartArea1";
            series5.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Pie;
            series5.Font = new System.Drawing.Font("Bahnschrift", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            series5.LabelBackColor = System.Drawing.Color.Transparent;
            series5.LabelBorderColor = System.Drawing.Color.Transparent;
            series5.LabelForeColor = System.Drawing.Color.White;
            series5.Name = "Parti";
            this.resChart.Series.Add(series5);
            // 
            // questionLbl
            // 
            resources.ApplyResources(this.questionLbl, "questionLbl");
            this.questionLbl.BackColor = System.Drawing.Color.Gainsboro;
            this.questionLbl.ForeColor = System.Drawing.Color.Black;
            this.questionLbl.Name = "questionLbl";
            // 
            // settingsPnl
            // 
            this.settingsPnl.BackColor = System.Drawing.Color.Gray;
            this.settingsPnl.Controls.Add(this.ENimgBtn);
            this.settingsPnl.Controls.Add(this.DEimgBtn);
            this.settingsPnl.Controls.Add(this.NOimgBtn);
            this.settingsPnl.Controls.Add(this.closeBtn);
            this.settingsPnl.Controls.Add(this.ENrdoBtn);
            this.settingsPnl.Controls.Add(this.DErdoBtn);
            this.settingsPnl.Controls.Add(this.NOrdoBtn);
            this.settingsPnl.Controls.Add(this.langLbl);
            this.settingsPnl.Controls.Add(this.settingsLbl);
            resources.ApplyResources(this.settingsPnl, "settingsPnl");
            this.settingsPnl.Name = "settingsPnl";
            this.settingsPnl.Paint += new System.Windows.Forms.PaintEventHandler(this.settingsPnl_Paint);
            // 
            // ENimgBtn
            // 
            resources.ApplyResources(this.ENimgBtn, "ENimgBtn");
            this.ENimgBtn.FlatAppearance.BorderSize = 0;
            this.ENimgBtn.Name = "ENimgBtn";
            this.ENimgBtn.UseVisualStyleBackColor = true;
            this.ENimgBtn.Click += new System.EventHandler(this.ENimgBtn_Click);
            // 
            // DEimgBtn
            // 
            resources.ApplyResources(this.DEimgBtn, "DEimgBtn");
            this.DEimgBtn.FlatAppearance.BorderSize = 0;
            this.DEimgBtn.Name = "DEimgBtn";
            this.DEimgBtn.UseVisualStyleBackColor = true;
            this.DEimgBtn.Click += new System.EventHandler(this.DEimgBtn_Click);
            // 
            // NOimgBtn
            // 
            resources.ApplyResources(this.NOimgBtn, "NOimgBtn");
            this.NOimgBtn.FlatAppearance.BorderSize = 0;
            this.NOimgBtn.Name = "NOimgBtn";
            this.NOimgBtn.UseVisualStyleBackColor = true;
            this.NOimgBtn.Click += new System.EventHandler(this.NOimgBtn_Click);
            // 
            // closeBtn
            // 
            this.closeBtn.BackColor = System.Drawing.Color.Silver;
            this.closeBtn.FlatAppearance.BorderSize = 0;
            this.closeBtn.FlatAppearance.MouseDownBackColor = System.Drawing.Color.Gray;
            this.closeBtn.FlatAppearance.MouseOverBackColor = System.Drawing.Color.Silver;
            resources.ApplyResources(this.closeBtn, "closeBtn");
            this.closeBtn.Name = "closeBtn";
            this.closeBtn.UseVisualStyleBackColor = false;
            this.closeBtn.Click += new System.EventHandler(this.closeBtn_Click);
            // 
            // ENrdoBtn
            // 
            resources.ApplyResources(this.ENrdoBtn, "ENrdoBtn");
            this.ENrdoBtn.BackColor = System.Drawing.Color.Transparent;
            this.ENrdoBtn.FlatAppearance.CheckedBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(255)))), ((int)(((byte)(128)))));
            this.ENrdoBtn.ForeColor = System.Drawing.Color.White;
            this.ENrdoBtn.Name = "ENrdoBtn";
            this.ENrdoBtn.TabStop = true;
            this.ENrdoBtn.UseVisualStyleBackColor = false;
            this.ENrdoBtn.CheckedChanged += new System.EventHandler(this.ENrdoBtn_CheckedChanged);
            // 
            // DErdoBtn
            // 
            resources.ApplyResources(this.DErdoBtn, "DErdoBtn");
            this.DErdoBtn.BackColor = System.Drawing.Color.Transparent;
            this.DErdoBtn.FlatAppearance.CheckedBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(255)))), ((int)(((byte)(128)))));
            this.DErdoBtn.ForeColor = System.Drawing.Color.White;
            this.DErdoBtn.Name = "DErdoBtn";
            this.DErdoBtn.TabStop = true;
            this.DErdoBtn.UseVisualStyleBackColor = false;
            this.DErdoBtn.CheckedChanged += new System.EventHandler(this.DErdoBtn_CheckedChanged);
            // 
            // NOrdoBtn
            // 
            resources.ApplyResources(this.NOrdoBtn, "NOrdoBtn");
            this.NOrdoBtn.BackColor = System.Drawing.Color.Transparent;
            this.NOrdoBtn.FlatAppearance.CheckedBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(255)))), ((int)(((byte)(128)))));
            this.NOrdoBtn.ForeColor = System.Drawing.Color.White;
            this.NOrdoBtn.Name = "NOrdoBtn";
            this.NOrdoBtn.TabStop = true;
            this.NOrdoBtn.UseVisualStyleBackColor = false;
            this.NOrdoBtn.CheckedChanged += new System.EventHandler(this.NOrdoBtn_CheckedChanged);
            // 
            // langLbl
            // 
            resources.ApplyResources(this.langLbl, "langLbl");
            this.langLbl.BackColor = System.Drawing.Color.Transparent;
            this.langLbl.ForeColor = System.Drawing.Color.White;
            this.langLbl.Name = "langLbl";
            // 
            // settingsLbl
            // 
            resources.ApplyResources(this.settingsLbl, "settingsLbl");
            this.settingsLbl.BackColor = System.Drawing.Color.Transparent;
            this.settingsLbl.ForeColor = System.Drawing.Color.White;
            this.settingsLbl.Name = "settingsLbl";
            // 
            // toolTip
            // 
            this.toolTip.IsBalloon = true;
            // 
            // prgBar
            // 
            this.prgBar.BackColor = System.Drawing.Color.DimGray;
            this.prgBar.ForeColor = System.Drawing.Color.Aqua;
            resources.ApplyResources(this.prgBar, "prgBar");
            this.prgBar.Name = "prgBar";
            this.prgBar.Step = 1;
            // 
            // statusStrip1
            // 
            this.statusStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripLblStng,
            this.toolStripLblSave});
            resources.ApplyResources(this.statusStrip1, "statusStrip1");
            this.statusStrip1.Name = "statusStrip1";
            // 
            // toolStripLblStng
            // 
            this.toolStripLblStng.BackColor = System.Drawing.Color.Transparent;
            this.toolStripLblStng.Name = "toolStripLblStng";
            resources.ApplyResources(this.toolStripLblStng, "toolStripLblStng");
            this.toolStripLblStng.Click += new System.EventHandler(this.toolStripLblStng_Click);
            // 
            // toolStripLblSave
            // 
            this.toolStripLblSave.BackColor = System.Drawing.Color.Transparent;
            this.toolStripLblSave.Name = "toolStripLblSave";
            resources.ApplyResources(this.toolStripLblSave, "toolStripLblSave");
            this.toolStripLblSave.Click += new System.EventHandler(this.toolStripLblSave_Click);
            // 
            // pnlMeningsBtn
            // 
            this.pnlMeningsBtn.BackColor = System.Drawing.Color.Silver;
            this.pnlMeningsBtn.Controls.Add(this.resetBtn);
            this.pnlMeningsBtn.Controls.Add(this.enigbtn);
            this.pnlMeningsBtn.Controls.Add(this.nøytralbtn);
            this.pnlMeningsBtn.Controls.Add(this.uenigbtn);
            resources.ApplyResources(this.pnlMeningsBtn, "pnlMeningsBtn");
            this.pnlMeningsBtn.Name = "pnlMeningsBtn";
            // 
            // resetBtn
            // 
            this.resetBtn.BackColor = System.Drawing.Color.DimGray;
            resources.ApplyResources(this.resetBtn, "resetBtn");
            this.resetBtn.FlatAppearance.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.resetBtn.FlatAppearance.BorderSize = 3;
            this.resetBtn.FlatAppearance.MouseDownBackColor = System.Drawing.Color.Gray;
            this.resetBtn.FlatAppearance.MouseOverBackColor = System.Drawing.Color.Gray;
            this.resetBtn.ForeColor = System.Drawing.Color.White;
            this.resetBtn.Name = "resetBtn";
            this.resetBtn.UseVisualStyleBackColor = false;
            this.resetBtn.Click += new System.EventHandler(this.resetBtn_Click);
            // 
            // frm
            // 
            this.AllowDrop = true;
            resources.ApplyResources(this, "$this");
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoValidate = System.Windows.Forms.AutoValidate.EnableAllowFocusChange;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.CausesValidation = false;
            this.Controls.Add(this.statusStrip1);
            this.Controls.Add(this.settingsPnl);
            this.Controls.Add(this.questionLbl);
            this.Controls.Add(this.resChart);
            this.Controls.Add(this.StartBtn);
            this.Controls.Add(this.questiontxtbox);
            this.Controls.Add(this.prgBar);
            this.Controls.Add(this.pnlMeningsBtn);
            this.Cursor = System.Windows.Forms.Cursors.Default;
            this.DoubleBuffered = true;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.Name = "frm";
            this.TransparencyKey = System.Drawing.Color.SaddleBrown;
            this.Load += new System.EventHandler(this.frm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.resChart)).EndInit();
            this.settingsPnl.ResumeLayout(false);
            this.settingsPnl.PerformLayout();
            this.statusStrip1.ResumeLayout(false);
            this.statusStrip1.PerformLayout();
            this.pnlMeningsBtn.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Button uenigbtn;
        private System.Windows.Forms.Button enigbtn;
        private System.Windows.Forms.Button nøytralbtn;
        private System.Windows.Forms.Button StartBtn;
        private System.Windows.Forms.DataVisualization.Charting.Chart resChart;
        private System.Windows.Forms.Label questionLbl;
        private System.Windows.Forms.SaveFileDialog saveFileDialog;
        private System.Windows.Forms.Panel settingsPnl;
        private System.Windows.Forms.RadioButton ENrdoBtn;
        private System.Windows.Forms.RadioButton DErdoBtn;
        private System.Windows.Forms.RadioButton NOrdoBtn;
        private System.Windows.Forms.Label langLbl;
        private System.Windows.Forms.Label settingsLbl;
        private System.Windows.Forms.Button ENimgBtn;
        private System.Windows.Forms.Button DEimgBtn;
        private System.Windows.Forms.Button NOimgBtn;
        public System.Windows.Forms.TextBox questiontxtbox;
        private System.Windows.Forms.ToolTip toolTip;
        private System.Windows.Forms.ProgressBar prgBar;
        private System.Windows.Forms.StatusStrip statusStrip1;
        private System.Windows.Forms.ToolStripStatusLabel toolStripLblStng;
        private System.Windows.Forms.ToolStripStatusLabel toolStripLblSave;
        private System.Windows.Forms.Panel pnlMeningsBtn;
        private System.Windows.Forms.Button closeBtn;
        private System.Windows.Forms.Button resetBtn;
    }
}

