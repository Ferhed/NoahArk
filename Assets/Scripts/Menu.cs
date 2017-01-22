using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using DG.Tweening;

public class Menu : MonoBehaviour
{
    public string playScene = "BateauScenePierre";

    public void BeginGame()
    {
        DOTween.Sequence()
            .AppendCallback(()=>AnimalManager.instance.FadeScreen())
            .AppendInterval(0.5f)
            .AppendCallback(()=>SceneManager.LoadScene(playScene))
            .Play();
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
