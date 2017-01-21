using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Menu : MonoBehaviour
{
    public string playScene = "BateauScenePierre";

    public void BeginGame()
    {
        SceneManager.LoadScene(playScene);
    }

    public void ResetAnimals()
    {
        AnimalManager.instance.ResetAnimals();
    }

    public void ExitGame()
    {
        Application.Quit();
    }
}
