using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Threading;
using Newtonsoft.Json;
using System.IO;
using System.Drawing.Drawing2D;

namespace ValgomatCSharp
{
    public partial class frm : Form
    {
        
        // Henter fillokasjonen til JSON filen med spørsmålene.
        public static string jsonPath = Path.Combine(Environment.CurrentDirectory, "questions.json");

        // Les all texten i filen
        static string json = File.ReadAllText(jsonPath);

        // Dynamic variabel. Gir mulighet til å få tilgang til objektene inni json filen
        readonly dynamic array = JsonConvert.DeserializeObject(json);


        // Hent fillokasjonen til JSON filen for teksten
        public static string LangJsonPath = Path.Combine(Environment.CurrentDirectory, "lang.json");

        // Les all texten i filen
        static string LangJson = File.ReadAllText(LangJsonPath);

        dynamic lang = JsonConvert.DeserializeObject(LangJson);


        public int questionint = 0;


        // Sett språk
        public string language = "no";


        

        // Dictionary som holder styr på hvor enig du er med partiene
        Dictionary<string, int> partipoints = new Dictionary<string, int>()
            {
                {"mdg", 0 },
                {"v", 0 },
                {"h", 0 },
                {"frp", 0 },
                {"sp", 0 },
                {"r", 0 },
                {"pdk", 0 },
                {"ap", 0 },
                {"sv", 0 },
                {"krf", 0 },
                {"dmk", 0 }
            };

        // De egentlige navnene til partiene.
        Dictionary<string, string> partinavn = new Dictionary<string, string>()
            {
                {"mdg", "Miljøpartiet De Grønne" },
                {"v", "Venstre" },
                {"h", "Høyre" },
                {"frp", "Fremskrittspartiet" },
                {"sp", "Senterpartiet" },
                {"r", "Rødt" },
                {"pdk", "Partiet De Kristne" },
                {"ap", "Arbeiderpartiet" },
                {"sv", "Sosialistisk Venstreparti" },
                {"krf", "Kristelig Folkeparti" },
                {"dmk", "Demokratene" }
            };
        public frm()
        {
            InitializeComponent();
        }


        private void frm_Load(object sender, EventArgs e)
        {
            Reset();
        }



        public void Reset() // Reset alt
        {
            questiontxtbox.Visible = false;
            resetBtn.Visible = false;
            pnlMeningsBtn.Visible = false;
            questionLbl.Visible = false;
            resChart.Visible = false;
            questiontxtbox.Size = new Size(714, 195);
            questiontxtbox.Location = new Point(36, 87);
            questionint = 0;
            prgBar.Value = 0;
            nøytralbtn.Visible = false;
            uenigbtn.Visible = false;
            enigbtn.Visible = false;
            StartBtn.Visible = true;
            toolStripLblSave.Visible = false;
            prgBar.Maximum = array.questions.Count;
            prgBar.Visible = false;
            var thread = new Thread(() =>
            {
                // Loop gjennom partipoengene og sett dem tilbake til 0
                for (int i = 0; i < partipoints.Count; i++)
                {
                    partipoints[partipoints.Keys.ToList()[0]] = 0;
                }
            });
            thread.Start(); // Multithreading, slik at valgomaten "fungerer godt teknisk" og ikke lagger.
            thread.IsBackground = true;

            
        }
        private void StartBtn_Click(object sender, EventArgs e)
        {
            pnlMeningsBtn.Visible = true;
            questiontxtbox.Visible = true;
            questiontxtbox.Size = new Size(714, 195);
            questiontxtbox.Location = new Point(36, 87);
            questionint = 0; // Reset spørsmålsnummeret
            nøytralbtn.Visible = true;
            uenigbtn.Visible = true;
            enigbtn.Visible = true;
            StartBtn.Visible = false;
            questiontxtbox.Visible = true;
            questionLbl.Visible = true;
            prgBar.Visible = true;
            page(questionint);
            
        }


        private void enigbtn_Click(object sender, EventArgs e)
        {
            page(questionint, 3);
        }
        private void uenigbtn_Click(object sender, EventArgs e)
        {
            page(questionint, 2);
        }
        private void nøytralbtn_Click(object sender, EventArgs e)
        {
            page(questionint, 1);
        }

        public string ChosenLanguage(string textId)
        {
            string text = lang.translations[textId][language];
           
            if (language == "no")
            {
                if (text.Contains("oo"))
                {
                    text = text.Replace("oo", "ø");
                }
                if (text.Contains("OO"))
                {
                    text = text.Replace("OO", "ø");
                }
                if (text.Contains("aa"))
                {
                    text = text.Replace("aa", "å");
                }
                if (text.Contains("ae"))
                {
                    text = text.Replace("ae", "æ");
                }
            }
            if (language == "de")
            {
                if (text.Contains("sss"))
                {
                    text = text.Replace("sss", "ß");
                }
                if (text.Contains("uu"))
                {
                    text = text.Replace("uu", "ü");
                }
                if (text.Contains("aa"))
                {
                    text = text.Replace("aa", "ä");
                }
            }
            
            return text;
        }
        public void page(int pageint, int mening = 0) // 1 = nøytral, 2 = uenig, 3 = enig
        {

            
            if (pageint + 1 == array.questions.Count) // Sjekk om det er slutt på spørsmålene.
            {
                Results(); // Vis slutt så vis resultatene
                return;
            }

            switch (mening) // Bytt mening.
            {
                default: // Default utføres når det ikke eksisteren en mening
                    string spørsmål = array.questions[pageint].s; // Hent spørsmålet ut av jsonfilen
                    prgBar.Value = pageint + 1;
                    spørsmål = ChosenLanguage($"{spørsmål}");
                    questiontxtbox.Text = spørsmål + "?";
                    questionLbl.Text = $"{ChosenLanguage("QUESTION")} {pageint + 1}/{array.questions.Count}";
                    return;
                case 1:
                    for (int i = 0; i < partipoints.Count; i++)
                    {
                        // Hent inn partiets mening om spørsmålet
                        var partivalg = array.questions[pageint].p[$"{partipoints.Keys.ToList()[i]}"];
                        if (partivalg == 2) // Vis partiet er uenig
                        {
                            partipoints[partipoints.Keys.ToList()[i]]--; // Trekk fra et poeng
                        }
                        else if (partivalg == 3) // Vis partiet er enig
                        {
                            partipoints[partipoints.Keys.ToList()[i]]++; // Legg til poeng
                        }
                    }
                    break;
                    break;
                case 2:
                    for (int i = 0; i < partipoints.Count; i++)
                    {
                        // Hent inn partiets mening om spørsmålet
                        var partivalg = array.questions[pageint].p[$"{partipoints.Keys.ToList()[i]}"];
                        if (partivalg == 2) // Vis partiet er uenig
                        {
                            partipoints[partipoints.Keys.ToList()[i]]++; // Legg til poeng
                        }
                        else if (partivalg == 3) // Vis partiet er enig
                        {
                            partipoints[partipoints.Keys.ToList()[i]]--; // Trekk fra et poeng
                        }
                    }
                    break;
                case 3:
                    for (int i = 0; i < partipoints.Count; i++)
                    {
                        // Hent inn partiets mening om spørsmålet
                        var partivalg = array.questions[pageint].p[$"{partipoints.Keys.ToList()[i]}"];
                        if (partivalg == 3) // Vis partiet er enig
                        {
                            partipoints[partipoints.Keys.ToList()[i]]++; // Legg til poeng
                        }
                        else if (partivalg == 2) // Vis partiet er uenig
                        {
                            partipoints[partipoints.Keys.ToList()[i]]--; // Trekk fra et poeng
                        }
                    }
                    break;
            }
            


            questionint++;
            pageint = questionint;
            // Hent spørsmålet ut av jsonfilen
            string spørsmål2 = array.questions[pageint].s;
            spørsmål2 = ChosenLanguage($"{spørsmål2}");
            questiontxtbox.Text = spørsmål2 + "?";
            prgBar.Value = pageint + 1;
            questionLbl.Text = $"{ChosenLanguage("QUESTION")} {pageint + 1}/{array.questions.Count}";
        }
       
        
        public void Results()// Vis resultatet
        {
            toolStripLblSave.Visible = true;
            prgBar.Visible = false;
            questionLbl.Visible = false;
            resetBtn.Visible = true;
            questiontxtbox.Size = new Size(431, 259); // Scale textboxen
            questiontxtbox.Location = new Point(36, 23);
            resChart.Visible = true; // Vis resultatscharten

            // Vis alle partiene har like poeng
            if (partipoints.Distinct().Skip(1).Any())
            {
                var partiSomDuErMestEnigMed = partipoints.Aggregate((x, y) => x.Value > y.Value ? x : y).Key;
                questiontxtbox.Text = $"{ChosenLanguage("RESULT")} alle";
            } else
            {
                // Sjekk hvilket parti som har høyest score.
                var partiSomDuErMestEnigMed = partipoints.Aggregate((x, y) => x.Value > y.Value ? x : y).Key;

                // Sett teksten til partiet som du er mest enig med
                questiontxtbox.Text = $"{ChosenLanguage("RESULT")} {partinavn[$"{partiSomDuErMestEnigMed}"]}";
            }
            foreach (KeyValuePair<string, int> p in partipoints)
            {

                resChart.Series["Parti"].Points.AddXY(p.Key + $" ({p.Value})", p.Value * 1000); // Sett chart points
            }

            

            // Gjem knappene.
            nøytralbtn.Visible = false;
            uenigbtn.Visible = false;
            enigbtn.Visible = false;
        }
        public void Save_Results()
        {
            saveFileDialog.Title = "Lagre Resultater";
            saveFileDialog.Filter = "larserick file (*.larserick)|*.larserick|largerick file (*.largerick)|*.largerick|lasterick file (*.lasterick)|*.lasterick|loaderick files (*.loaderick)|*.loaderick";
            saveFileDialog.ShowDialog();
            string path = saveFileDialog.FileName;
            if (path == "")
            {
                return;
            }
            StreamWriter File = new StreamWriter(path);
            foreach (KeyValuePair<string, int> p in partipoints)
            {
                File.WriteLine($"{p.Key} - {p.Value}");
            }
            File.Close();


            // Screenshot
            /*Bitmap screenshot = new Bitmap(this.Size.Width, this.Size.Height);
            Graphics g = Graphics.FromImage(screenshot);
            g.CopyFromScreen(0, 0, 0, 0, screenshot.Size);
            Image img = screenshot;
            img.Save($"resultat.jpg");*/

        }

        private void closeBtn_Click(object sender, EventArgs e)
        {
            settingsPnl.Visible = false;
            StreamWriter Setting = new StreamWriter("Settings.larserick");
            Setting.WriteLine($"{language}");
            Setting.Close();
        }
        private void NOrdoBtn_CheckedChanged(object sender, EventArgs e)
        {
            language = "no";
            UpdateText();
        }

        private void DErdoBtn_CheckedChanged(object sender, EventArgs e)
        {
            language = "de";
            UpdateText();
        }

        private void ENrdoBtn_CheckedChanged(object sender, EventArgs e)
        {
            language = "en";
            UpdateText();
        }

        public void UpdateText()
        {
            StartBtn.Text = ChosenLanguage("START_VALGOMAT");
            enigbtn.Text = ChosenLanguage("AGREE");
            uenigbtn.Text = ChosenLanguage("DISAGREE");
            nøytralbtn.Text = ChosenLanguage("NEUTRAL");
            settingsLbl.Text = ChosenLanguage("SETTINGS_TITLE");
            langLbl.Text = ChosenLanguage("CHOSE_LANG");
            toolStripLblSave.Text = ChosenLanguage("SAVE");
            toolStripLblStng.Text = ChosenLanguage("SETTINGS_TITLE");
            if (!StartBtn.Visible)
            {
                string spørsmål3 = array.questions[questionint].s;
                spørsmål3 = ChosenLanguage($"{spørsmål3}");
                questiontxtbox.Text = spørsmål3 + "?";
            }
            
        }

        private void settingsPnl_Paint(object sender, PaintEventArgs e)
        {
            using (LinearGradientBrush brush = new LinearGradientBrush(this.ClientRectangle, Color.Gray, Color.Black, 90F))
            {
                e.Graphics.FillRectangle(brush, this.ClientRectangle);
            }
        }

        private void NOimgBtn_Click(object sender, EventArgs e)
        {
            language = "no";
            UpdateText();
            NOrdoBtn.Checked = true;
        }

        private void DEimgBtn_Click(object sender, EventArgs e)
        {
            language = "de";
            UpdateText();
            DErdoBtn.Checked = true;
        }

        private void ENimgBtn_Click(object sender, EventArgs e)
        {
            language = "en";
            UpdateText();
            ENrdoBtn.Checked = true;
        }

        private void toolStripLblStng_Click(object sender, EventArgs e)
        {
            settingsPnl.Visible = true;
        }

        private void toolStripLblSave_Click(object sender, EventArgs e)
        {
            Save_Results();
        }

        private void resetBtn_Click(object sender, EventArgs e)
        {
            Reset();
        }
    }
}
