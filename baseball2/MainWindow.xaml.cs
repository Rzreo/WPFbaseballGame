using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Text.RegularExpressions;
using System.Diagnostics;

namespace baseball2
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            logo.Visibility = Visibility.Visible;
            startButton.Visibility = Visibility.Visible;
            title.Visibility = Visibility.Visible;

            strikeGroup.Visibility = Visibility.Collapsed;
            ballGroup.Visibility = Visibility.Collapsed;
            outGroup.Visibility = Visibility.Collapsed;
            tryCountGroup.Visibility = Visibility.Collapsed;
            inputBox.Visibility = Visibility.Collapsed;
            submit.Visibility = Visibility.Collapsed;

            historyButton.Visibility = Visibility.Collapsed;
            historyBlock.Visibility = Visibility.Collapsed;
            historyBorder.Visibility = Visibility.Collapsed;

            successMessage.Visibility = Visibility.Collapsed;
            retryButton.Visibility = Visibility.Collapsed;
            scoreBall.Visibility = Visibility.Collapsed;
            scoreText.Visibility = Visibility.Collapsed;


            firstNum.Visibility = Visibility.Collapsed;
            secondNum.Visibility = Visibility.Collapsed;
            thirdNum.Visibility = Visibility.Collapsed;
            for(int i = 0; i < 10; i++)
            {
                firstNum.Items.Add(i);
                secondNum.Items.Add(i);
                thirdNum.Items.Add(i);
            }
        }

        int cnt;
        int sCount;
        int bCount;
        int oCount;
        string solNum;

        string history = "[기록]";

        Random random = new Random();

        private void inputBox_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            Regex regex = new Regex("[^0-9]+");
            e.Handled = regex.IsMatch(e.Text);

        }

        private void submit_Click(object sender, RoutedEventArgs e)
        {
            if(inputBox.Text.Length == 3) submitAction(inputBox.Text);
            else if (firstNum.SelectedItem != null &&
                secondNum.SelectedItem != null &&
                thirdNum.SelectedItem != null)
            {
                string inputText = "" + firstNum.SelectedItem + secondNum.SelectedItem + thirdNum.SelectedItem;
                submitAction(inputText);
            }
        }

        private void submitAction(string text)
        {
            if (historyBlock.Visibility == Visibility.Visible) return; 
            int ss = 0;
            int bb = 0;
            int oo = 0;
            for (int i = 0; i < 3; i++)
            {
                if (solNum[i] == text[i]) ss++;
                else if (solNum.Contains(text[i])) bb++;
                else oo++;
            }
            sCount = ss;
            bCount = bb;
            oCount = oo;
            strikeCount.Text = sCount.ToString();
            ballCount.Text = bCount.ToString();
            outCount.Text = oCount.ToString();

            cnt++;
            tryCount.Text = cnt.ToString();

            history += "\n입력 숫자: " + text + "   시도횟수: " + cnt; 

            if (sCount == 3)
            {
                strikeGroup.Visibility = Visibility.Collapsed;
                ballGroup.Visibility = Visibility.Collapsed;
                outGroup.Visibility = Visibility.Collapsed;
                tryCountGroup.Visibility = Visibility.Collapsed;
                inputBox.Visibility = Visibility.Collapsed;
                submit.Visibility = Visibility.Collapsed;

                successMessage.Visibility = Visibility.Visible;
                retryButton.Visibility = Visibility.Visible;

                scoreText.Text = cnt.ToString();
                scoreBall.Visibility = Visibility.Visible;
                scoreText.Visibility = Visibility.Visible;
            }
        }
        string getNum()
        {
            Random rand = new Random(Guid.NewGuid().GetHashCode());
            List<int> numList = new List<int>();
            for (int i = 0; i < 10; i++)
            {
                numList.Add(i);
            }
            string str = "";
            for (int i = 0; i < 3; i++)
            {
                int index = rand.Next(0, 10 - i);
                str += numList[index];
                numList.RemoveAt(index);
            }
            return str;
        }

        private void startButton_Click(object sender, RoutedEventArgs e)
        {
            gameStart();
        }

        private void gameStart()
        {
            startButton.Visibility = Visibility.Collapsed;
            logo.Visibility = Visibility.Collapsed;
            title.Visibility = Visibility.Collapsed;

            strikeGroup.Visibility = Visibility.Visible;
            ballGroup.Visibility = Visibility.Visible;
            outGroup.Visibility = Visibility.Visible;
            tryCountGroup.Visibility = Visibility.Visible;
            inputBox.Visibility = Visibility.Visible;
            submit.Visibility = Visibility.Visible;
            historyButton.Visibility = Visibility.Visible;

            firstNum.Visibility = Visibility.Visible;
            secondNum.Visibility = Visibility.Visible;
            thirdNum.Visibility = Visibility.Visible;

            cnt = 0;
            sCount = 0;
            bCount = 0;
            oCount = 0;
            history = "[기록]";

            solNum = getNum();
            strikeCount.Text = sCount.ToString();
            ballCount.Text = bCount.ToString();
            outCount.Text = oCount.ToString();
            tryCount.Text = cnt.ToString();
            inputBox.Clear();
        }

        private void inputBox_GotFocus(object sender, RoutedEventArgs e)
        {
            inputBox.Clear();
        }

        private void retryButton_Click(object sender, RoutedEventArgs e)
        {
            successMessage.Visibility = Visibility.Collapsed;
            retryButton.Visibility = Visibility.Collapsed;
            scoreBall.Visibility = Visibility.Collapsed;
            scoreText.Visibility = Visibility.Collapsed;

            gameStart();
        }

        private void inputBox_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Return)
            {
                if (inputBox.Text.Length == 3) submitAction(inputBox.Text);
            }
        }

        private void updateComboBox(object sender, ComboBox another1, ComboBox another2)
        {
            ComboBox currentComboBox = sender as ComboBox;
            if (currentComboBox != null)
            {
                if (currentComboBox.SelectedItem != null)
                {
                    string selectedItem = currentComboBox.SelectedItem.ToString();
                    if (selectedItem != null)
                    {
                        if (another1.SelectedItem != null && another1.SelectedItem.ToString().Equals(selectedItem)) another1.SelectedItem = null;
                        if (another2.SelectedItem != null && another2.SelectedItem.ToString().Equals(selectedItem)) another2.SelectedItem = null;
                    }
                }
            }
        }
        private void firstNum_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            updateComboBox(sender, secondNum, thirdNum);
        }

        private void secondNum_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            updateComboBox(sender, firstNum, thirdNum);
        }

        private void thirdNum_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            updateComboBox(sender, secondNum, firstNum);
        }

        private void historyButton_Click(object sender, RoutedEventArgs e)
        {
            if (historyBlock.Visibility == Visibility.Collapsed)
            {
                historyBlock.Text = history;

                historyBlock.Visibility = Visibility.Visible;
                historyBorder.Visibility = Visibility.Visible;
            }
            else
            {
                historyBlock.Visibility = Visibility.Collapsed;
                historyBorder.Visibility = Visibility.Collapsed;
            }
        }
    }
}
